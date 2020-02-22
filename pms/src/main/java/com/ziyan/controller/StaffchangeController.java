package com.ziyan.controller;

import com.ziyan.entity.*;
import com.ziyan.service.DepartmentService;
import com.ziyan.service.PostcategoryService;
import com.ziyan.service.StaffService;
import com.ziyan.service.StaffchangeService;
import com.ziyan.utils.JsonResult;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
        List<Staff> staffList=null;
        staffList=staffService.selectStaffByName(sName);
        if(staffList!=null){
            log.info(staffList);
            result= success(staffList);
        }
        return result;
    }

    /**
     * 跳转到员工调动查询
     * @param model
     * @param currentPage
     * @return
     */

    @GetMapping("gotoSearchStaffchange")
    public String gotoSearchStaffchange(Model model,@RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage){
        PageBean<Staffchange> staffchangePageBean= staffchangeService.selectStaffChangeByPage(currentPage);
//        for( Staffchange ss:staffchangePageBean.getLists()){
//            log.info("员工调动"+ss);
//        }

        model.addAttribute("staffchangeByPage", staffchangePageBean.getLists());
        model.addAttribute("totalCount", staffchangePageBean.getTotalCount());
        model.addAttribute("currPage", staffchangePageBean.getCurrPage());
        model.addAttribute("totalPage", staffchangePageBean.getTotalPage());
        return "staffchange/staffchangesearch";
    }


    /**
     * 调转到员工调动登记页面
     *
     * @return
     */
    @GetMapping("gotoAddstaffchange")
    public String gotoAddstaffchange(Model model) {
        List<Postcategory> postcategoryList = null;//查询所有职位
        postcategoryList = postcategoryService.getPostcategory();
        List<Department> departmentList = null;//查找所有部门
        departmentList = departmentService.getDepartment();
        model.addAttribute("post", postcategoryList);
        model.addAttribute("department", departmentList);
        return "staffchange/addstaffchange";
    }

    /**
     * 员工调动提交操作
     * @param model
     * @param staffchange
     * @return
     */
    @PostMapping("addStaffchange")
    public String addStaffChange(Model model, Staffchange staffchange){
        Staff staff=new Staff();
        if(staffchange!=null){
            log.info(staffchange);
            staff.setsId(staffchange.getsId());
            staff.setdId(staffchange.getdIdNew());
            staff.setsPost(staffchange.getpIdNew());
            staffService.updateStaff(staff);//修改员工及本信息
            staffchangeService.addStaffChange(staffchange);//员工调整数据加入数据库
        }
        return  "staffchange/addstaffchange";
    }

}
