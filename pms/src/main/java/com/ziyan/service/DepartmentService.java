package com.ziyan.service;

import com.ziyan.entity.Department;
import com.ziyan.entity.PageBean;

import java.util.List;

public interface DepartmentService {

    List<Department> getDepartment();

    /**
     * 分页查询所有部门
     * */
    PageBean<Department> getDepartmentByPage(int currentPage);
}
