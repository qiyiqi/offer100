package com.cn.hust.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hust.dao.ICompanyDao;
import com.cn.hust.pojo.Company;
import com.cn.hust.service.ICompanyService;

@Service("companyService")
public class CompanyServiceImpl implements ICompanyService {
	@Resource
	private ICompanyDao companyDao;
	@Override
	public int register(Company company){
		return this.companyDao.insert(company);
	}
	@Override
	public Company checkLogin(String email,String password){
		Company company = companyDao.getCompanyByEmail(email);
				
		if(company!= null && company.getcPassword().equals(password)){
			return company;
		}
		return null;
	}
	@Override
	public int updateCompanyinfo(Company company){
		return this.companyDao.updateByPrimaryKeySelective(company);
	}
	@Override
	public Company getCompanyByid(int id){
		return this.companyDao.selectByPrimaryKey(id);
	}
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
