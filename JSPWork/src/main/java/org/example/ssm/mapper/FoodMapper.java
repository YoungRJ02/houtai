package org.example.ssm.mapper;

import org.example.ssm.pojo.Food;

public interface FoodMapper {
    //查询
    Food find(Food food);
    //检查
    Food check(Food food);
    //增加
    void add(Food food);
    //删除
    void delete(Food food);
    //修改
    void update(Food food);
}
