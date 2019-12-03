package com.ziyan.service.impl;

import com.ziyan.dao.DepartmentMapper;
import com.ziyan.entity.Department;
import com.ziyan.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    private DepartmentMapper departmentDao;
    @Override
    public List<Department> getDepartment() {
        return departmentDao.getDepartment();
    }
}
