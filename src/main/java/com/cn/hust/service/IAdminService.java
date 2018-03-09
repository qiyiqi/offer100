package com.cn.hust.service;

import com.cn.hust.pojo.Admin;

public interface IAdminService {
	public int register(Admin admin);
	public Admin checkLogin(String email, String password);
	public Admin searchAdminById(Integer id);
}
