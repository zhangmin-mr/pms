package com.ziyan.dao;

import com.ziyan.entity.Staff;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository("staffDao")
public interface StaffMapper {
    /**
     * 分页查询所有的员工
     * @param map
     * @return
     */
    List<Staff> getStaffByPage(HashMap<String, Object> map);

    /**
     * 修改员工
     * @param staff
     * @return
     */
    int updateStaff(Staff staff);

    /**
     * 员工总数
     * @return
     */
    int getStaffCount();

    /**
     * 添加员工信息
     * @param staff
     * @return
     */
    int addStaff(Staff staff);

    /**
     * 按名字或Id查询
     * @param staff
     * @return
     */
    List<Staff> selectStaffByNameOrId(Staff staff);

    /**
     *
     * @param sId
     * @return
     */
    Staff getStaffById(String sId);
}
