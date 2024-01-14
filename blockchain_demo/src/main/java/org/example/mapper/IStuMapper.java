package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.entity.Student;

import java.util.List;

@Mapper
public interface IStuMapper {
    @Select("select * from student")
    List<Student> getStudents();
}
