package com.cn.hust.dao;

import java.util.List;

import com.cn.hust.pojo.Company;

public interface ICompanyDao {
	int deleteByPrimaryKey(Integer cId);

    int insert(Company record);

    int insertSelective(Company record);

    Company selectByPrimaryKey(Integer cId);
    
    Company getCompanyByEmail(String email);

    int updateByPrimaryKeySelective(Company record);

    int updateByPrimaryKey(Company record);
    
    List<Company> selectByflag(Integer flag);
    
    List<Company> findAllCompany();
}
