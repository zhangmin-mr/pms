package com.ziyan.dao;

import com.ziyan.entity.Postcategory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("postcategoryDao")
public interface PostcategoryMapper {
    List<Postcategory> getPostcategory();
}
