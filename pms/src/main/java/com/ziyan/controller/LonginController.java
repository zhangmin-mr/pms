package com.ziyan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class LonginController {


    @GetMapping("longin")
    public String login(){
        return "login";
    }

    @GetMapping(value="/")
    public String index() {
        return "login";
    }

    @PostMapping(value="loginSubmit")
    public String longinSubmit(String userName,String passWord){
        return "main";
    }

}
