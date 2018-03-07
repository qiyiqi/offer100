package com.cn.hust.service;

import com.cn.hust.pojo.Company;

public interface ICompanyService {
	public int register(Company company);
	public Company checkLogin(String email,String password);
	public int updateCompanyinfo(Company company);
	public Company getCompanyByid(int id);
}
