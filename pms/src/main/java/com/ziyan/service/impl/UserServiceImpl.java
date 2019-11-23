package com.ziyan.service.impl;

import com.ziyan.dao.UserMapper;
import com.ziyan.entity.User;
import com.ziyan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private   UserMapper userDao;

    @Override
    public User getUserNameAndPassWord(String userName, String passWord) {
        return userDao.checkUserByNameAndPass(userName,passWord);
    //    return null;
    }
}
