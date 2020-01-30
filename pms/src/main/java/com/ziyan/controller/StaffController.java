package com.ziyan.controller;

import com.ziyan.entity.Department;
import com.ziyan.entity.PageBean;
import com.ziyan.entity.Postcategory;
import com.ziyan.entity.Staff;
import com.ziyan.service.DepartmentService;
import com.ziyan.service.PostcategoryService;
import com.ziyan.service.StaffService;
import com.ziyan.utils.JsonResult;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("staff/")
@SessionAttributes(names = {"message"})
public class StaffController extends BaseController{
    private Logger log = Logger.getLogger(StaffController.class);
    @Autowired
    StaffService staffService;
    @Autowired
    PostcategoryService postcategoryService;
    @Autowired
    DepartmentService departmentService;


    @GetMapping("gotoStaffManager")
    public String staffList(Model model, @RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage) {
        log.info("doget");
        PageBean<Staff> staffByPage = staffService.getStaffByPage(currentPage);
        model.addAttribute("staffByPage", staffByPage.getLists());
        model.addAttribute("totalCount", staffByPage.getTotalCount());
        model.addAttribute("currPage", staffByPage.getCurrPage());
        model.addAttribute("totalPage", staffByPage.getTotalPage());
        return "staff/staffmanage";
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

    @PostMapping("AjaxStaff")
    @ResponseBody
    public JsonResult AjaxStaff(String sName){
        JsonResult result =new JsonResult();
        List<Staff> staffList=new ArrayList<Staff>();
        staffList=staffService.selectStaffByName(sName);
        if(staffList!=null){
            result= success(staffList);
        }
        return result;
    }



    @PostMapping("addStaffChange")
    public String addStaffchange(Model model){
        List<Postcategory> postcategoryList = new ArrayList<Postcategory>();//查询所有职位
        postcategoryList = postcategoryService.getPostcategory();
        List<Department> departmentList = new ArrayList<Department>();//查找所有部门
        departmentList = departmentService.getDepartment();
        model.addAttribute("post", postcategoryList);
        model.addAttribute("department", departmentList);
        return "staffchange/addstaffchange";
    }

    /**
     * 员工管理
     *
     * @param model
     * @param type
     * @param search
     * @return
     */
    @PostMapping("staffManager")
    public String staffManager(Model model, String type, String search) {
        log.info("dopost");
        log.info("type:" + type);
        Staff staff = new Staff();
        if (type.equals("sId")) {
            log.info("sId:" + search);
            staff.setsId(search);
        } else if (type.equals("sName")) {
            log.info("sName:" + search);
            staff.setsName(search);
        }
        List<Staff> staffByPage = staffService.selectStaffByNameOrId(staff);
        model.addAttribute("staffByPage", staffByPage);
        return "staff/staffmanage";
    }

    @GetMapping("gotoStaffUpdate")
    String gotoStaffUpdate(String sId, Model model) {
        Staff staff = null;
        staff = staffService.getStaffById(sId);
        List<Postcategory> postcategoryList = postcategoryService.getPostcategory();//获得所有职位
        List<Department> departments = departmentService.getDepartment();//获得所有部门
        model.addAttribute("post", postcategoryList);
        model.addAttribute("departments", departments);
        model.addAttribute("sf", staff);
        return "staff/staffupdate";
    }

    @GetMapping("gotoAddstaff")
    public String gotoAddstaff(Model model) {
        List<Postcategory> postcategoryList = postcategoryService.getPostcategory();//获得所有职位
        List<Department> departments = departmentService.getDepartment();
        model.addAttribute("post", postcategoryList);
        model.addAttribute("departments", departments);
        return "staff/addstaff";
    }

    @PostMapping("addStaff")
    public String addStaff(Model model, HttpServletRequest request, String sDepartmentName, Staff staff, String birthyear, String birthmon, String birthday) {
        request.getSession();
        log.info("sDepartment:" + sDepartmentName);
        //分别查到部门Id和职位的Id存到员工的数据库中
        Department department = departmentService.getDepartmentIdByName(sDepartmentName);//根据名字查到部门Id
        String dId = department.getdId();
        Postcategory postcategory = postcategoryService.getPostcategoryIdByName(staff.getsPost());//根据名字查到职位Id
        log.info("dId:" + dId);
        String birth = birthyear + "-" + birthmon;
        birth += "-" + birthday;
        String sId = null;

        //获取工作入职时间
        String job = request.getParameter("jobyear") + "-" + request.getParameter("jobmon");
        job += "-" + request.getParameter("jobday");
        Date birthDate = null;
        Date jobDate = null;
        Date sIdDate = null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmmss");
        try {
            birthDate = sdf.parse(birth);
            jobDate = sdf.parse(job);
            sId = sdf2.format(new java.util.Date());

        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        //封装一个员工
        Staff staff1 = new Staff(sId, staff.getsName(), staff.getsSex(), birth, postcategory.getpId(), dId, staff.getsSalary(), new Timestamp(jobDate.getTime()), staff.getsIdentityId());
        staffService.addStaff(staff1);
        return "staff/addstaff";
    }

    @PostMapping("staffUpdate")
    public String updateStaff(Model model, HttpServletRequest request, String sDepartmentName, String sPost, Staff staff, String birthyear, String birthmon, String birthday) {

        log.info("sDepartment:" + sDepartmentName);
        //分别查到部门Id和职位的Id存到员工的数据库中
        //Department department = departmentService.getDepartmentIdByName(sDepartmentName);//根据名字查到部门Id

        // Postcategory postcategory = postcategoryService.getPostcategoryIdByName(staff.getsPost());//根据名字查到职位Id
        log.info("sPost:" + sPost);
        String birth = birthyear + "-" + birthmon;
        birth += "-" + birthday;
        String sId = staff.getsId();

        log.info("sId:" + sId);
        //获取工作入职时间
        String job = request.getParameter("jobyear") + "-" + request.getParameter("jobmon");
        job += "-" + request.getParameter("jobday");
        Date birthDate = null;
        Date jobDate = null;
        Date sIdDate = null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmmss");
        try {
            birthDate = sdf.parse(birth);
            jobDate = sdf.parse(job);
            sId = sdf2.format(new java.util.Date());

        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        //封装一个员工
        Staff staff1 = new Staff(staff.getsId(), staff.getsName(), staff.getsSex(), birth, sPost, sDepartmentName, staff.getsSalary(), new Timestamp(jobDate.getTime()), staff.getsIdentityId());
        log.info(staff1);
        staffService.updateStaff(
                staff1);
        return "staff/staffupdate";
    }

}

