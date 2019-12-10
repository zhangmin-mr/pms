package com.ziyan.service.impl;

import com.ziyan.dao.StaffMapper;
import com.ziyan.entity.PageBean;
import com.ziyan.entity.Staff;
import com.ziyan.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service("staffService")
public class StaffServiceImpl implements StaffService {

    @Autowired
    StaffMapper staffDao;
    @Override
    public PageBean<Staff> getStaffByPage(int currentPage) {
        HashMap<String,Object> map=new HashMap<String, Object>();
        PageBean<Staff> pageBean=new PageBean<Staff>();


        return null;
    }
}
