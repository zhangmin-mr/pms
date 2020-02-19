package com.ziyan.service;

import com.ziyan.entity.PageBean;
import com.ziyan.entity.Staffchange;

import java.util.List;

public interface StaffchangeService {
    /**
     * 添加员工变化账户
     * @param staffChange
     * @return
     */
    int addStaffChange(Staffchange staffChange);
    PageBean<Staffchange> selectStaffChangeByPage(int currentPage);
}
