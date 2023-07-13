package org.example.ssm.controller;

import org.example.ssm.pojo.Meijing;
import org.example.ssm.service.MeijingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MeijingController {

    @Autowired
    private MeijingService meijingService;

    @RequestMapping("/gomeijing")
    private String meijing(Meijing meijing){
        Meijing m = meijingService.find(meijing);
        if(m != null){
            return "meijingcontent";
        }
        else {
            return "searchno";
        }
    }

    @RequestMapping("/addMeijing")
    private String add(Meijing meijing){
        Meijing meijing1 = meijingService.check(meijing);
        if(meijing1 == null){
            meijingService.add(meijing);
            return "success";
        }
        return "fail";
    }

    @RequestMapping("/deleteMeijing")
    private String delete(Meijing meijing){
        Meijing meijing1 = meijingService.check(meijing);
        if(meijing1 != null){
            meijingService.delete(meijing);
            return "success";
        }
        return "fail";
    }

    @RequestMapping("/updateMeijing")
    private String update(Meijing meijing){
        Meijing meijing1 = meijingService.check(meijing);
        if(meijing1 != null){
            meijingService.update(meijing);
            return "success";
        }
        return "fail";
    }
}
