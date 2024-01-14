package org.example.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.example.entity.Person;
import org.example.mapper.PersonMapper;
import org.example.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonServiceImpl implements PersonService {
    @Autowired
    private PersonMapper personMapper;
    @Override
    public Person getUserInfoByName(String name) {
        QueryWrapper<Person> wrapper = new QueryWrapper<>();
        wrapper.eq("name",name);
        Person person = personMapper.selectOne(wrapper);
        return person;
    }
}
