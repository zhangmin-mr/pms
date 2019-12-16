package com.ziyan.service.impl;

import com.ziyan.dao.StaffMapper;
import com.ziyan.entity.Page;
import com.ziyan.entity.PageBean;
import com.ziyan.entity.Staff;
import com.ziyan.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("staffService")
public class StaffServiceImpl implements StaffService {

    // 每页显示的数据数量
    private static int pageSize = Page.PAGESIZE;

    @Autowired
    StaffMapper staffDao;
    @Override
    public PageBean<Staff> getStaffByPage(int currentPage) {
        HashMap<String,Object> map=new HashMap<String, Object>();
        PageBean<Staff> pageBean=new PageBean<Staff>();

        //封装当前页数
        pageBean.setCurrPage(currentPage);
        pageBean.setPageSize(pageSize);

        //封装总记录数
        int totalCount=staffDao.getStaffCount();
        pageBean.setTotalCount(totalCount);

        //封装总页数
        double tc=totalCount;
        Double umn=Math.ceil(tc/pageSize);
        pageBean.setTotalPage(umn.intValue());

        map.put("start",(currentPage-1)*pageSize);
        map.put("size",pageBean.getPageSize());

        List<Staff> staffList=staffDao.getStaffByPage(map);
        pageBean.setLists(staffList);
        return pageBean;
    }

    @Override
    public void addStaff(Staff staff) {
        staffDao.addStaff(staff);
    }
}
