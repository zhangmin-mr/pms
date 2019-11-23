package com.ziyan.controller;

import com.ziyan.entity.User;
import com.ziyan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/")
@SessionAttributes(names = {"message"})
public class LoginController {

    @Autowired
    private UserService userService;

//    跳转到登录界面
    @GetMapping("login")
    public String login(){
        return "login";
    }

    @GetMapping(value="/")
    public String index() {
        return "login";
    }

    @PostMapping(value="userLoginSubmit")
    public String main(String userName,String passWord){
        User user =null;
        user= userService.getUserNameAndPassWord(userName,passWord);
        System.out.println("longin,,,,,,,,,,");
        if(user!=null){

            return "main";
        }
        return "login";
    }

}
