package com.example.houtaiguanliboot.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.List;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.houtaiguanliboot.common.Result;

import com.example.houtaiguanliboot.service.ICourseService;
import com.example.houtaiguanliboot.entity.Course;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author young
 * @since 2023-11-18
 */
@RestController
@RequestMapping("/course")
            public class CourseController {

    @Resource
    private ICourseService courseService;

    // 新增或者更新
    @PostMapping
    public Result save(@RequestBody Course course) {
        courseService.saveOrUpdate(course);
            return Result.success();
            }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        courseService.removeById(id);
            return Result.success();
            }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        courseService.removeByIds(ids);
            return Result.success();
            }

    @GetMapping
    public Result findAll() {
            return Result.success(courseService.list());
            }

    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
            return Result.success(courseService.getById(id));
            }

    @GetMapping("/page")
    public Result findPage(@RequestParam String name,
                               @RequestParam Integer pageNum,
    @RequestParam Integer pageSize) {
//            QueryWrapper<Course> queryWrapper = new QueryWrapper<>();
//            queryWrapper.orderByDesc("id");
            return Result.success(courseService.findPage(new Page<>(pageNum, pageSize), name));

            }
    @PostMapping("/studentCourse/{courseId}/{studentId}")
    public Result studentCourse(@PathVariable Integer courseId, @PathVariable Integer studentId) {
        courseService.setStudentCourse(courseId, studentId);
        return Result.success();
    }

}

