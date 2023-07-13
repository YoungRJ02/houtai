package org.example.ssm.service;

import org.example.ssm.pojo.User;

public interface UserService {
    //查找
    User findOne(User user);
    //添加
    void addOne(User user);
    //检查
    User checkReg(User user);
    //删除
    User delete(User user);
    //修改
    User update(User user);

}
