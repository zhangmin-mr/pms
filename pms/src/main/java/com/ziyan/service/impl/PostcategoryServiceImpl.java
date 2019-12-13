package com.ziyan.service.impl;

import com.ziyan.dao.PostcategoryMapper;
import com.ziyan.entity.Postcategory;
import com.ziyan.service.PostcategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("postcategoryService")
public class PostcategoryServiceImpl implements PostcategoryService {


    @Autowired
    PostcategoryMapper postcategoryDao;

    @Override
    public List<Postcategory> getPostcategory() {
        return postcategoryDao.getPostcategory();
    }
}
