package org.example.service;

import org.example.entity.Person;

public interface PersonService {
    //用户登录
    Person getUserInfoByName(String name);
}
