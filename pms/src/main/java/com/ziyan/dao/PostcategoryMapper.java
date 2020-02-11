package com.ziyan.dao;

import com.ziyan.entity.Postcategory;
import com.ziyan.entity.Staffchange;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("postcategoryDao")
public interface PostcategoryMapper {
    List<Postcategory> getPostcategory();

    /**
     * 查询职位Id根据职位名字
     * @param pName
     * @return
     */
    Postcategory getPostcategoryIdByName(String pName);

}
