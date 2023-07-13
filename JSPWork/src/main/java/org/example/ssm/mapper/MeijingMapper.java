package org.example.ssm.mapper;

import org.example.ssm.pojo.Meijing;

public interface MeijingMapper {
    //查询
    Meijing find(Meijing meijing);
    //检查
    Meijing check(Meijing meijing);
    //添加
    void add(Meijing meijing);
    //删除
    void delete(Meijing meijing);
    //修改
    void update(Meijing meijing);
}
