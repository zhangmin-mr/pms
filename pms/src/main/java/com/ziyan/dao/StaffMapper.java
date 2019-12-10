package com.ziyan.dao;

import com.ziyan.entity.Staff;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository("staffDao")
public interface StaffMapper {
    /**
     * 分页查询所有的员工
     */
    List<Staff> getStaffByPage(HashMap<String, Object> map);
}
