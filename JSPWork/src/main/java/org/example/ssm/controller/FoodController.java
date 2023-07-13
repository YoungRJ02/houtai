package org.example.ssm.controller;

import org.example.ssm.pojo.Food;
import org.example.ssm.service.FoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FoodController {

    @Autowired
    private FoodService foodService;

    @RequestMapping("/goFood")
    private String find(Food food){
        Food f = foodService.find(food);
        if(f != null){
            return "foodcontent";
        }
        else {
            return "searchno";
        }
    }

    @RequestMapping("/addFood")
    private String add(Food food){
        Food food1 = foodService.check(food);
        if(food1 == null){
            foodService.add(food);
            return "success";
        }
        return "fail";
    }

    @RequestMapping("/deleteFood")
    private String delete(Food food){
        Food food1 = foodService.check(food);
        if(food1 != null){
            foodService.delete(food);
            return "success";
        }
        return "fail";
    }

    @RequestMapping("/updateFood")
    private String update(Food food){
        Food food1 = foodService.check(food);
        if(food1 != null){
            foodService.update(food);
            return "success";
        }
        return "fail";
    }
}