package com.ziyan.controller;

import com.ziyan.entity.Admins;
import com.ziyan.entity.Company;
import com.ziyan.entity.Department;
import com.ziyan.entity.PageBean;
import com.ziyan.service.AdminsService;
import com.ziyan.service.CompanyService;
import com.ziyan.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/")
@SessionAttributes(names = {"message"})
public class LoginController {

    @Autowired
    private AdminsService adminsService;
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private CompanyService companyService;

    //    跳转到登录界面
    @GetMapping("login")
    public String login() {
        return "login";
    }

    @GetMapping("/")
    public String index() {
        return "login";
    }

    @PostMapping("userLoginSubmit")
    public String main(String userName, String passWord, Model model, @RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage) {

        System.out.println("username=" + userName + "password=" + passWord);
        System.out.println("longin,,,,,,,,,,");
        Admins admins = null;
        admins = adminsService.getUserNameAndPassWord(userName, passWord);//验证账户密码
        if (admins != null) {
            //List<Department> departments = departmentService.getDepartment();//获得所有的部门
            List<Company> company = companyService.getCompany();//获得公司信息
            PageBean<Department> departmentPagemsg = departmentService.getDepartmentByPage(currentPage);//分页获得公司部门信息
            model.addAttribute("departmentPagemsg", departmentPagemsg);
            model.addAttribute("company", company);
            return "index";

        }
        return "login";
    }

    @GetMapping("homeList")
    public String home(Model model, @RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage) {
        List<Company> company = companyService.getCompany();//获得公司信息
        PageBean<Department> departmentPagemsg = departmentService.getDepartmentByPage(currentPage);//获得公司部门信息分页
        model.addAttribute("departmentPagemsg", departmentPagemsg);
        model.addAttribute("company", company);
        return "home";
    }

    @GetMapping("top")
    public String indexTop(){
        return "top";
    }

    @GetMapping("leftmenu")
    public String indexLeft(){
        return "leftmenu";
    }
}
