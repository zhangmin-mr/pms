package com.ziyan.service.impl;

import com.ziyan.dao.DepartmentMapper;
import com.ziyan.entity.Department;
import com.ziyan.entity.Page;
import com.ziyan.entity.PageBean;
import com.ziyan.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService {

    // 每页显示的数据数量
    private static int pageSize = Page.PAGESIZE;

    @Autowired
    private DepartmentMapper departmentDao;
    @Override
    public List<Department> getDepartment() {
        return departmentDao.getDepartment();
    }

    @Override
    public PageBean<Department> getDepartmentByPage(int currentPage) {
        HashMap<String,Object> map=new HashMap<String,Object>();
        PageBean<Department> pageBean=new PageBean<Department>();
        //封装当前页数
        pageBean.setCurrPage(currentPage);
        pageBean.setPageSize(pageSize);

        //封装总记录数
        int totalCount =departmentDao.selectDepartmentCount();
        pageBean.setTotalCount(totalCount);

        // 封装总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);// 向上取整
        pageBean.setTotalPage(num.intValue());

        map.put("start", (currentPage - 1) * pageSize);
        map.put("size", pageBean.getPageSize());

        List<Department> list=departmentDao.getDepartmentByPage(map);
        pageBean.setLists(list);
        return pageBean;
    }
}
