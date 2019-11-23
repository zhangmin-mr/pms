package com.ziyan.service;

import com.ziyan.entity.User;

public interface UserService {
//    查询账户信息
    User getUserNameAndPassWord(String userName, String passWord);
}
