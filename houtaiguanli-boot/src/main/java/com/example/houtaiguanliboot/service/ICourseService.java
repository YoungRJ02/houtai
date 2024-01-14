package com.example.houtaiguanliboot.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.houtaiguanliboot.entity.Course;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author young
 * @since 2023-11-18
 */
public interface ICourseService extends IService<Course> {

    Page<Course> findPage(Page<Course> objectPage, String name);

    void setStudentCourse(Integer courseId, Integer studentId);
}
