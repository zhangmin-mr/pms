package com.ziyan.service;

import com.ziyan.entity.Postcategory;

import java.util.List;

public interface PostcategoryService {
    List<Postcategory> getPostcategory();
    /**
     * 查询职位Id根据职位名字
     * @param pName
     * @return
     */
    Postcategory getPostcategoryIdByName(String pName);
}
