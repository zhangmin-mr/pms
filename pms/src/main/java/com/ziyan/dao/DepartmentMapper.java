package com.ziyan.dao;

import com.ziyan.entity.Department;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository("departmentDao")
public interface DepartmentMapper {
    /**
     * 分页查找所有部门信息
     */
    List<Department> getDepartmentByPage(HashMap<String, Object> map);

    /**
     * 部门总数
     */
    int selectDepartmentCount();

    /**
     * 查询部门
     * @return
     */
    List<Department> getDepartment();

    /**
     * 根据名字查询ID
     * @param dName
     * @return
     */
    Department getDepartmentIdByName(String dName);
}
