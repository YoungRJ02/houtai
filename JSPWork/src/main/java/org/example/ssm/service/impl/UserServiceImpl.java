package org.example.ssm.service.impl;

import org.example.ssm.mapper.UserMapper;
import org.example.ssm.pojo.User;
import org.example.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public User findOne(User user) {
        return userMapper.findOne(user);
    }

    @Override
    public void addOne(User user) {
        userMapper.addOne(user);
    }

    @Override
    public User checkReg(User user) {
        return userMapper.checkReg(user);
    }

    @Override
    public User delete(User user) {
        userMapper.delete(user);
        return user;
    }

    @Override
    public User update(User user) {
        userMapper.update(user);
        return user;
    }
}
