package com.ziyan.controller;

import com.ziyan.entity.Department;
import com.ziyan.entity.Postcategory;
import com.ziyan.entity.Staff;
import com.ziyan.entity.Staffchange;
import com.ziyan.service.DepartmentService;
import com.ziyan.service.PostcategoryService;
import com.ziyan.service.StaffService;
import com.ziyan.service.StaffchangeService;
import com.ziyan.utils.JsonResult;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("staffchange/")
public class StaffchangeController extends BaseController{
    private Logger log = Logger.getLogger(StaffchangeController.class);

    @Autowired
    StaffService staffService;
    @Autowired
    PostcategoryService postcategoryService;
    @Autowired
    DepartmentService departmentService;
    @Autowired
    StaffchangeService staffchangeService;


    /**
     * Ajax异步查询员工的信息
     * @param sName
     * @return
     */
    @PostMapping(value = "AjaxStaff")
    @ResponseBody
    public JsonResult AjaxStaff(String sName){
        JsonResult result =new JsonResult();
        List<Staff> staffList=new ArrayList<Staff>();
        staffList=staffService.selectStaffByName(sName);
        if(staffList!=null){
            log.info(staffList);
            result= success(staffList);
        }
        return result;
    }


    /**
     * 调转到员工调动登记页面
     *
     * @return
     */
    @GetMapping("gotoAddstaffchange")
    public String gotoAddstaffchange(Model model) {
        List<Postcategory> postcategoryList = new ArrayList<Postcategory>();//查询所有职位
        postcategoryList = postcategoryService.getPostcategory();
        List<Department> departmentList = new ArrayList<Department>();//查找所有部门
        departmentList = departmentService.getDepartment();
        model.addAttribute("post", postcategoryList);
        model.addAttribute("department", departmentList);
        return "staffchange/addstaffchange";
    }


    @PostMapping("addStaffchange")
    public String addStaffChange(Model model, Staffchange staffchange){
        if(staffchange!=null){
            log.info(staffchange);
            staffchangeService.addStaffChange(staffchange);//员工调整数据加入数据库
        }
        return  "staffchange/addstaffchange";
    }

}
