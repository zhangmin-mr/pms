package com.ziyan.dao;

import com.ziyan.entity.Department;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("departmentDao")
public interface DepartmentMapper {
    //查找所有部门信息
    List<Department> getDepartment();
}
