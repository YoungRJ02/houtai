package org.example.ssm.controller;

import org.example.ssm.pojo.User;
import org.example.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("golog")
    private String log(User user, Model model){
        User u = userService.findOne(user);
        model.addAttribute("user", u);
        if(u != null){
            return "logandre/logok";
        }
        else {
            return "logandre/logno";
        }
    }

    @RequestMapping("goreg")
    private String reg(User user){
        User u = userService.checkReg(user);
        if(u == null){
            userService.addOne(user);
            return "logandre/regok";
        }
        return "logandre/regno";
    }

    @RequestMapping("addUser")
    private String add(User user){
        User user1 = userService.checkReg(user);
        if(user1 == null){
            userService.addOne(user);
            return "success";
        }
        return "fail";
    }

    @RequestMapping("/deleteUser")
    private String delete(User user){
        User user1 = userService.delete(user);
        if(user1 != null){
            userService.delete(user);
            return "success";
        }
        return "fail";
    }

    @RequestMapping("/updateUser")
    private String update(User user){
        User user1 = userService.update(user);
        if(user1 != null){
            userService.update(user);
            return "success";
        }
        return "fail";
    }
}
