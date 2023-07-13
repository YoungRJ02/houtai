package org.example.ssm.service.impl;

import org.example.ssm.mapper.FoodMapper;
import org.example.ssm.pojo.Food;
import org.example.ssm.service.FoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class FoodServiceImpl implements FoodService {

    @Autowired
    private FoodMapper foodMapper;

    @Override
    public Food find(Food food) {
        return foodMapper.find(food);
    }

    @Override
    public Food check(Food food) {
        return foodMapper.check(food);
    }

    @Override
    public void add(Food food) {
        foodMapper.add(food);
    }

    @Override
    public Food delete(Food food) {
        foodMapper.delete(food);
        return food;
    }

    @Override
    public void update(Food food) {
        foodMapper.update(food);
    }
}
