package org.example.ssm.controller;

import org.example.ssm.pojo.Jianli;
import org.example.ssm.service.JianliService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JianliController {

    @Autowired
    private JianliService jianliService;

    @RequestMapping("/goJianli")
    private String find(Jianli jianli){
        Jianli jianli1 = jianliService.find(jianli);
        if(jianli != null){
            return "jianlicontent";
        }
        else {
            return "searchno";
        }
    }
}
