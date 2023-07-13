package org.example.ssm.controller;

import org.example.ssm.pojo.Renwen;
import org.example.ssm.pojo.User;
import org.example.ssm.service.RenwenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class RenwenController {
    @Autowired
    private RenwenService renwenService;

    @RequestMapping("/go")
    private String renwen(Renwen renwen){
        Renwen r = renwenService.find(renwen);
        if(r != null){
            return "renwencontent";
        }
        else {
            return "searchno";
        }
    }

    @RequestMapping("/addRenwen")
    private String add(Renwen renwen){
        Renwen renwen1 = renwenService.check(renwen);
        if(renwen1 == null){
            renwenService.add(renwen);
            return "success";
        }
        return "fail";
    }

    @RequestMapping("/deleteRenwen")
    private String delete(Renwen renwen){
        Renwen renwen1 = renwenService.check(renwen);
        if(renwen1 != null){
            renwenService.delete(renwen);
            return "success";
        }
        return "fail";
    }

    @RequestMapping("/updateRenwen")
    private String update(Renwen renwen){
        Renwen renwen1 = renwenService.check(renwen);
        if(renwen1 != null){
            renwenService.update(renwen);
            return "success";
        }
        return "fail";
    }

}
