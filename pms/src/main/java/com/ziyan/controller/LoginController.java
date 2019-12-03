package com.ziyan.controller;

import com.ziyan.entity.Admins;
import com.ziyan.entity.Department;
import com.ziyan.service.AdminsService;
import com.ziyan.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@RequestMapping("/")
@SessionAttributes(names = {"message"})
public class LoginController {

    @Autowired
    private AdminsService adminsService;
    @Autowired
    private DepartmentService departmentService;

//    跳转到登录界面
    @GetMapping("login")
    public String login(){
        return "login";
    }

    @GetMapping("/")
    public String index() {
        return "login";
    }

    @PostMapping("userLoginSubmit")
    public String main(String userName, String passWord, Model model){

        System.out.println("username="+userName+"password="+passWord);
        Admins admins=null;
        admins= adminsService.getUserNameAndPassWord(userName,passWord);
         List<Department> departments=departmentService.getDepartment();

        System.out.println("longin,,,,,,,,,,");
        if(admins!=null){
        model.addAttribute("departments",departments);
            return "home";

        }
        return "login";
    }

}
