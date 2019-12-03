package com.ziyan.service.impl;

import com.ziyan.dao.AdminsMapper;
import com.ziyan.entity.Admins;
import com.ziyan.service.AdminsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("adminsService")
public class AdminsServiceImpl implements AdminsService {

    @Autowired
    private AdminsMapper adminsDao;

    @Override
    public Admins getUserNameAndPassWord(String userName, String passWord) {
        return adminsDao.checkUserByNameAndPass(userName,passWord);
    }
}
