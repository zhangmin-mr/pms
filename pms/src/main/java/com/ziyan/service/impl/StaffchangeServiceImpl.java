package com.ziyan.service.impl;

import com.ziyan.dao.StaffchangeMapper;
import com.ziyan.entity.Department;
import com.ziyan.entity.Page;
import com.ziyan.entity.PageBean;
import com.ziyan.entity.Staffchange;
import com.ziyan.service.StaffchangeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service("staffchangeService")
public class StaffchangeServiceImpl implements StaffchangeService {

    // 每页显示的数据数量
    private static int pageSize = Page.PAGESIZE;

    @Autowired
    StaffchangeMapper staffchangeDao;
    @Override
    public int addStaffChange(Staffchange staffChange) {
        return staffchangeDao.addStaffChange(staffChange);
    }

    @Override
    public PageBean<Staffchange> selectStaffChangeByPage(int currentPage) {
        HashMap<String,Object> map=new HashMap<String,Object>();
        PageBean<Staffchange> pageBean=new PageBean<Staffchange>();
        //封装当前页数
        pageBean.setCurrPage(currentPage);
        pageBean.setPageSize(pageSize);

        //封装总记录数
        int totalCount =staffchangeDao.getStaffchangeCount();
        pageBean.setTotalCount(totalCount);

        // 封装总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);// 向上取整
        pageBean.setTotalPage(num.intValue());

        map.put("start", (currentPage - 1) * pageSize);
        map.put("size", pageBean.getPageSize());

        List<Staffchange> list=staffchangeDao.selectStaffChangeByPage(map);
        pageBean.setLists(list);

        return pageBean;
    }
}
