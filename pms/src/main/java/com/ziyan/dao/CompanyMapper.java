package com.ziyan.dao;

import com.ziyan.entity.Company;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("companyDao")
public interface CompanyMapper {

    /**
     * 查询公司信息
    * */
    List<Company> getCompany();
}
