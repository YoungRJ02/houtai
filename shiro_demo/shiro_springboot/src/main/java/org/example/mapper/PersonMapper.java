package org.example.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.example.entity.Person;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonMapper extends BaseMapper<Person> {
}
