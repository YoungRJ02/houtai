package com.example.houtaiguanliboot.controller;


import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.SecureUtil;
import cn.hutool.poi.excel.ExcelReader;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.houtaiguanliboot.common.Constants;
import com.example.houtaiguanliboot.common.Result;
import com.example.houtaiguanliboot.controller.dto.UserDto;
import com.example.houtaiguanliboot.controller.dto.UserPasswordDTO;
import com.example.houtaiguanliboot.utils.TokenUtils;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.List;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import com.example.houtaiguanliboot.service.IUserService;
import com.example.houtaiguanliboot.entity.User;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author young
 * @since 2023-10-07
 */
@RestController
@RequestMapping("/user")
public class UserController {
        @Resource
        private IUserService userService;

        // 新增或者更新
        @PostMapping
        public Result save(@RequestBody User user) {
                return Result.success(userService.saveOrUpdate(user));
                }

        @DeleteMapping("/{id}")
        public Result delete(@PathVariable Integer id) {
                return Result.success(userService.removeById(id));
                }

        @PostMapping("/del/batch")
        public Result deleteBatch(@RequestBody List<Integer> ids) {
                return Result.success(userService.removeByIds(ids));
                }

        @GetMapping
        public Result findAll() {
                return Result.success(userService.list());
                }

        @GetMapping("/{id}")
        public Result findOne(@PathVariable Integer id) {
                return Result.success(userService.getById(id));
                }

        @GetMapping("/page")
        public Result findPage(@RequestParam Integer pageNum,
        @RequestParam Integer pageSize, @RequestParam(defaultValue = "") String username,
                                   @RequestParam(defaultValue = "") String email,
                                   @RequestParam(defaultValue = "") String address) {
//                QueryWrapper<User> queryWrapper = new QueryWrapper<>();
//                if (!"".equals(username)) {
//                        queryWrapper.like("username", username);
//                }
//                if (!"".equals(email)) {
//                        queryWrapper.like("email", email);
//                }
//                if (!"".equals(address)) {
//                        queryWrapper.like("address", address);
//                }
//                queryWrapper.orderByDesc("id");
                return Result.success(userService.findPage(new Page<>(pageNum, pageSize), username, email, address));
                }

        /**
         * 导出接口
         */
        @GetMapping("/export")
        public void export(HttpServletResponse response) throws Exception {
                // 从数据库查询出所有的数据
                List<User> list = userService.list();
                // 通过工具类创建writer 写出到磁盘路径
//        ExcelWriter writer = ExcelUtil.getWriter(filesUploadPath + "/用户信息.xlsx");
                // 在内存操作，写出到浏览器
                ExcelWriter writer = ExcelUtil.getWriter(true);
                //自定义标题别名
                writer.addHeaderAlias("username", "用户名");
                writer.addHeaderAlias("password", "密码");
                writer.addHeaderAlias("nickname", "昵称");
                writer.addHeaderAlias("email", "邮箱");
                writer.addHeaderAlias("phone", "电话");
                writer.addHeaderAlias("address", "地址");
                writer.addHeaderAlias("createTime", "创建时间");

                // 一次性写出list内的对象到excel，使用默认样式，强制输出标题
                writer.write(list, true);

                // 设置浏览器响应的格式
                response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
                String fileName = URLEncoder.encode("用户信息", "UTF-8");
                response.setHeader("Content-Disposition", "attachment;filename=" + fileName + ".xlsx");

                ServletOutputStream out = response.getOutputStream();
                writer.flush(out, true);
                out.close();
                writer.close();

        }

        /**
         * excel 导入
         * @param file
         * @throws Exception
         */
        @PostMapping("/import")
        public Result imp(MultipartFile file) throws Exception {
                InputStream inputStream = file.getInputStream();
                ExcelReader reader = ExcelUtil.getReader(inputStream);
                // 方式1：(推荐) 通过 javabean的方式读取Excel内的对象，但是要求表头必须是英文，跟javabean的属性要对应起来
//        List<User> list = reader.readAll(User.class);

                // 方式2：忽略表头的中文，直接读取表的内容
                List<List<Object>> list = reader.read(1);
                List<User> users = CollUtil.newArrayList();
                for (List<Object> row : list) {
                        User user = new User();
                        user.setUsername(row.get(1).toString());
                        user.setPassword(row.get(2).toString());
                        user.setNickname(row.get(3).toString());
                        user.setEmail(row.get(4).toString());
                        user.setPhone(row.get(5).toString());
                        user.setAddress(row.get(6).toString());
                        users.add(user);
                }

                userService.saveBatch(users);
                return Result.success(true);
        }

        @PostMapping("/login")
        public Result login(@RequestBody UserDto userDto){
                String username = userDto.getUsername();
                String password = userDto.getPassword();
                if (StrUtil.isBlank(username) || StrUtil.isBlank(password)){
                        return Result.error(Constants.CODE_400, "参数错误");
                }
                UserDto dto = userService.login(userDto);
                return Result.success(dto);
        }

        @PostMapping("/register")
        public Result reg(@RequestBody UserDto userDto){
                String username = userDto.getUsername();
                String password = userDto.getPassword();
                if (StrUtil.isBlank(username) || StrUtil.isBlank(password)){
                        return Result.error(Constants.CODE_400, "参数错误");
                }
                User dto = userService.register(userDto);
                return Result.success(dto);
        }

        @GetMapping("/username/{username}")
        public Result findOne(@PathVariable String username) {
                QueryWrapper<User> queryWrapper = new QueryWrapper<>();
                queryWrapper.eq("username", username);
                return Result.success(userService.getOne(queryWrapper));
        }

        @GetMapping("/total")
        public Result getTotal(){
                String count = String.valueOf(userService.count());
                return Result.success(count);
        }

        @PostMapping("/password")
        public Result password(@RequestBody UserPasswordDTO userPasswordDTO) {
                userService.updatePassword(userPasswordDTO);
                return Result.success();
        }

        @GetMapping("/role/{role}")
        public Result findUsersByRole(@PathVariable String role) {
                QueryWrapper<User> queryWrapper = new QueryWrapper<>();
                queryWrapper.eq("role", role);
                List<User> list = userService.list(queryWrapper);
                return Result.success(list);
        }
}

