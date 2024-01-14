package com.example.houtaiguanliboot.service.Impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.log.Log;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.houtaiguanliboot.common.Constants;
import com.example.houtaiguanliboot.controller.dto.UserDto;
import com.example.houtaiguanliboot.controller.dto.UserPasswordDTO;
import com.example.houtaiguanliboot.entity.Menu;
import com.example.houtaiguanliboot.entity.User;
import com.example.houtaiguanliboot.exception.ServiceException;
import com.example.houtaiguanliboot.mapper.RoleMapper;
import com.example.houtaiguanliboot.mapper.RoleMenuMapper;
import com.example.houtaiguanliboot.mapper.UserMapper;
import com.example.houtaiguanliboot.service.IMenuService;
import com.example.houtaiguanliboot.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.houtaiguanliboot.utils.TokenUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author young
 * @since 2023-10-07
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private RoleMenuMapper roleMenuMapper;

    @Autowired
    private IMenuService menuService;

    @Resource
    private UserMapper userMapper;
    private static final Log LOG = Log.get();

    @Override
    public UserDto login(UserDto userDto) {
        User user = getUserInfo(userDto);
        if(user != null){
            BeanUtil.copyProperties(user, userDto, true);
            String token = TokenUtils.genToken(user.getId().toString(), user.getPassword());
            userDto.setToken(token);
            String role = user.getRole();
            List<Menu> roleMenus = getRoleMenus(role);
            userDto.setMenu(roleMenus);
            return userDto;
        }else {
            throw new  ServiceException(Constants.CODE_600, "用户名或密码错误");
        }
    }

    @Override
    public User register(UserDto userDto) {
        User user = getUserInfo(userDto);
        if (user == null) {
            user = new User();
            BeanUtil.copyProperties(userDto, user, true);
            save(user);
        }else {
            throw new ServiceException(Constants.CODE_600, "用户已存在");
        }
        return user;
    }

    @Override
    public void updatePassword(UserPasswordDTO userPasswordDTO) {
        int update = userMapper.updatePassword(userPasswordDTO);
        if (update < 1) {
            throw new ServiceException(Constants.CODE_600, "密码错误");
        }
    }

    @Override
    public Page<User> findPage(Page<User> page, String username, String email, String address) {
        return userMapper.findPage(page, username, email, address);
    }

    private User getUserInfo(UserDto userDto){
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", userDto.getUsername());
        queryWrapper.eq("password", userDto.getPassword());
        User one;
        try {
            one = getOne(queryWrapper); // 从数据库查询用户信息
        } catch (Exception e) {
            LOG.error(e);
            throw new ServiceException(Constants.CODE_500, "系统错误");
        }
        return one;
    }

    private List<Menu> getRoleMenus(String roleFlag) {
        Integer roleId = roleMapper.selectByFlag(roleFlag);
        // 当前角色的所有菜单id集合
        List<Integer> menuIds = roleMenuMapper.selectByRoleId(roleId);

        // 查出系统所有的菜单(树形)
        List<Menu> menus = menuService.findMenus("");
        // new一个最后筛选完成之后的list
        List<Menu> roleMenus = new ArrayList<>();
        // 筛选当前用户角色的菜单
        for (Menu menu : menus) {
            if (menuIds.contains(menu.getId())) {
                roleMenus.add(menu);
            }
            List<Menu> children = menu.getChildren();
            // removeIf()  移除 children 里面不在 menuIds集合中的 元素
            children.removeIf(child -> !menuIds.contains(child.getId()));
        }
        return roleMenus;
    }
}
