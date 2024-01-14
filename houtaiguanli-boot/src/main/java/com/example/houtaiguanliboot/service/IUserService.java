package com.example.houtaiguanliboot.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.houtaiguanliboot.common.Result;
import com.example.houtaiguanliboot.controller.dto.UserDto;
import com.example.houtaiguanliboot.controller.dto.UserPasswordDTO;
import com.example.houtaiguanliboot.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author young
 * @since 2023-10-07
 */
public interface IUserService extends IService<User> {

    UserDto login(UserDto userDto);

    User register(UserDto userDto);

    void updatePassword(UserPasswordDTO userPasswordDTO);

    Page<User> findPage(Page<User> objectPage, String username, String email, String address);
}
