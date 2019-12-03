package com.ziyan.dao;

import com.ziyan.entity.Admins;
import com.ziyan.entity.User;
import org.springframework.stereotype.Repository;


@Repository("adminsDao")
public interface AdminsMapper {
    Admins checkUserByNameAndPass(String userName, String passWord);
}
