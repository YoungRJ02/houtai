package org.example.ssm.mapper;

import org.example.ssm.pojo.User;


public interface UserMapper {
    //登录
    User findOne(User user);
    //注册
    void addOne(User user);
    //注册时重名检测
    User checkReg(User user);
    //删除
    void delete(User user);
    //修改
    void update(User user);
}
