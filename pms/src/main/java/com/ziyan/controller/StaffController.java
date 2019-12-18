package com.ziyan.controller;

import com.ziyan.entity.Department;
import com.ziyan.entity.PageBean;
import com.ziyan.entity.Postcategory;
import com.ziyan.entity.Staff;
import com.ziyan.service.DepartmentService;
import com.ziyan.service.PostcategoryService;
import com.ziyan.service.StaffService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("staff/")
@SessionAttributes(names = {"message"})
public class StaffController {
    private Logger log = Logger.getLogger(StaffController.class);
    @Autowired
    StaffService staffService;
    @Autowired
    PostcategoryService postcategoryService;
    @Autowired
    DepartmentService departmentService;


    @GetMapping("staffManager")
    public String staffList(Model model, @RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage){
        PageBean<Staff> staffByPage=staffService.getStaffByPage(currentPage);
        model.addAttribute("staffByPage",staffByPage);
        return "staff/staffmanage";
    }
    @GetMapping("gotoAddstaff")
    public String gotoAddstaff(Model model){
        List<Postcategory> postcategoryList=postcategoryService.getPostcategory();//获得所有职位
       List<Department> departments= departmentService.getDepartment();
        model.addAttribute("post",postcategoryList);
        model.addAttribute("departments",departments);
        return "staff/addstaff";
    }

    @PostMapping("addStaff")
    public String addStaff(Model model, HttpServletRequest request,String sDepartmentName,Staff staff,String birthyear, String birthmon,String birthday){
        request.getSession();
        log.info("sDepartment:"+sDepartmentName);
        Department department=departmentService.getDepartmentIdByName(sDepartmentName);//根据名字查到部门Id
        String dId=department.getdId();
        log.info("dId:"+dId);
        String birth=birthyear+"-"+birthmon;
        birth+="-"+birthday;
        String sId=null;

        //获取工作入职时间
        String job = request.getParameter("jobyear")+"-"+request.getParameter("jobmon");
        job += "-"+request.getParameter("jobday");
        Date birthDate =null;
        Date jobDate = null;
        Date sIdDate=null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sdf2=new SimpleDateFormat("yyyyMMddHHmmss");
        try {
            birthDate = sdf.parse(birth);
            jobDate = sdf.parse(job);
            sId  = sdf2.format(new java.util.Date());

        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
       //封装一个员工
        Staff staff1=new Staff(sId,staff.getsName(),staff.getsSex(),birth,staff.getsPost(),dId,staff.getsSalary(),new Timestamp(jobDate.getTime()),staff.getsIdentityId());
        staffService.addStaff(staff1);
        return "staff/addstaff";
    }
}

