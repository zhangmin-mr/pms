package com.ziyan.service.impl;

import com.ziyan.dao.CompanyMapper;
import com.ziyan.entity.Company;
import com.ziyan.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("companyService")
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    CompanyMapper companyDao;
    @Override
    public List<Company> getCompany() {
        return companyDao.getCompany();
    }
}
