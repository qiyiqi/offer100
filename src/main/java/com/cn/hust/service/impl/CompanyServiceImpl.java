package com.cn.hust.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hust.dao.IAdminDao;
import com.cn.hust.dao.ICompanyDao;
import com.cn.hust.pojo.Company;
import com.cn.hust.service.IAdminService;
import com.cn.hust.service.ICompanyService;

@Service("companyService")
public class CompanyServiceImpl implements ICompanyService{
	@Resource
	private ICompanyDao companyDao;
	
	@Override
    public List<Company> searchCompanyByFlag(Integer flag){
		return this.companyDao.selectByflag(flag);
    }
	@Override
    public Company getCompanyById(Integer id){
		return this.companyDao.selectByPrimaryKey(id);
    }
	@Override
	public int changeFlag(Company company){
		return this.companyDao.updateByPrimaryKeySelective(company);
	}
	@Override
	public List<Company> searchAllCompany(){
		return this.companyDao.findAllCompany();
	}
}
