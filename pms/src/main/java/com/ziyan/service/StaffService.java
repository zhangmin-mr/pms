package com.ziyan.service;


import com.ziyan.entity.PageBean;
import com.ziyan.entity.Staff;

import java.util.HashMap;
import java.util.List;

public interface StaffService {
    /**
     * 分页查询所有员工
     */
    PageBean<Staff> getStaffByPage(int currentPage);
    /**
     *
     * @param sId
     * @return
     */
    Staff getStaffById(String sId);

    /**
     * 添加员工信息
     *
     * @param staff
     */
    void addStaff(Staff staff);

    /**
     * 按名字或Id查询
     * @param staff
     * @return
     */
    List<Staff> selectStaffByNameOrId(Staff staff);
}
