package com.ziyan.dao;


import com.ziyan.entity.Staffchange;
import org.springframework.stereotype.Repository;

@Repository("staffchangeDao")
public interface StaffchangeMapper {
    /**
     * 添加员工调整
     * @param staffchange
     * @return
     */
    int addStaffChange(Staffchange staffchange);
}
