package com.ziyan.service;

import com.ziyan.entity.Admins;
import com.ziyan.entity.User;

public interface AdminsService {
//    查询账户信息
    Admins getUserNameAndPassWord(String userName, String passWord);
}
