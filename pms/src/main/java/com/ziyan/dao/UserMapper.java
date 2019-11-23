package com.ziyan.dao;

import com.ziyan.entity.User;
import org.springframework.stereotype.Repository;


@Repository("userDao")
public interface UserMapper {
    User checkUserByNameAndPass(String userName, String passWord);
}
