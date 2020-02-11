package com.ziyan.dao;


import com.ziyan.entity.Staffchange;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository("staffchangeDao")
public interface StaffchangeMapper {
    /**
     * 添加员工调整
     * @param staffchange
     * @return
     */
    int addStaffChange(Staffchange staffchange);

    /**
     * 查询调职
     * @param map
     * @return
     */
    List<Staffchange> selectStaffChangeByPage(HashMap<String ,Object> map);

    /**
     * 查询员工调整总数
     * @return
     */
    int getStaffchangeCount();
}
