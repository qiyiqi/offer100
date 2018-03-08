package com.cn.hust.service;

import java.util.List;

import com.cn.hust.pojo.Company;

public interface ICompanyService {
	public List<Company> searchCompanyByFlag(Integer flag);
	public Company getCompanyById(Integer id);
	public int changeFlag(Company company);
	public List<Company> searchAllCompany();
}
