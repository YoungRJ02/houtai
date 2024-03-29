package com.example.houtaiguanliboot.controller.dto;

import com.example.houtaiguanliboot.entity.Menu;
import lombok.Data;

import java.util.List;

/**
 * 接受前端登录请求的参数
 */
@Data
public class UserDto {
    private String username;
    private String password;
    private String nickname;
    private String avatarUrl;
    private String token;
    private String role;
    private List<Menu> menu;
    private Integer id;
}