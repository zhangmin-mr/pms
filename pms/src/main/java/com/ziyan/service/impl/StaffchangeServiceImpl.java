package com.ziyan.service.impl;

import com.ziyan.dao.StaffchangeMapper;
import com.ziyan.entity.Staffchange;
import com.ziyan.service.StaffchangeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("staffchangeService")
public class StaffchangeServiceImpl implements StaffchangeService {
    @Autowired
    StaffchangeMapper staffchangeDao;
    @Override
    public int addStaffChange(Staffchange staffChange) {
        return staffchangeDao.addStaffChange(staffChange);
    }
}
