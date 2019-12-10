package com.ziyan.service;


import com.ziyan.entity.PageBean;
import com.ziyan.entity.Staff;

import java.util.HashMap;

public interface StaffService {
    /**
     * 分页查询所有员工
     */
    PageBean<Staff> getStaffByPage(int currentPage);
}
