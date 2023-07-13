package org.example.ssm.service;

import org.example.ssm.pojo.Renwen;
import java.util.List;

public interface RenwenService {
    //查询
    Renwen find(Renwen renwen);
    //添加
    void add(Renwen renwen);
    //检查
    Renwen check(Renwen renwen);
    //删除
    void delete(Renwen renwen);
    //修改
    void update(Renwen renwen);
}
