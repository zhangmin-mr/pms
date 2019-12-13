package com.ziyan.controller;

import com.ziyan.entity.PageBean;
import com.ziyan.entity.Postcategory;
import com.ziyan.entity.Staff;
import com.ziyan.service.PostcategoryService;
import com.ziyan.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
@RequestMapping("staff/")
@SessionAttributes(names = {"message"})
public class StaffController {

    @Autowired
    StaffService staffService;
    @Autowired
    PostcategoryService postcategoryService;

    @GetMapping("staffManager")
    public String staffList(Model model, @RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage){
        PageBean<Staff> staffByPage=staffService.getStaffByPage(currentPage);
        model.addAttribute("staffByPage",staffByPage);
        return "staff/staffmanage";
    }
    @GetMapping("gotoAddstaff")
    public String gotoAddstaff(Model model){
        List<Postcategory> postcategoryList=postcategoryService.getPostcategory();
        model.addAttribute("post",postcategoryList);
        return "staff/addstaff";
    }
}
