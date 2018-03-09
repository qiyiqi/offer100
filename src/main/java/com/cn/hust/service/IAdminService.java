package com.cn.hust.service;

import java.util.List;

import com.cn.hust.pojo.Admin;
import com.cn.hust.pojo.User;


public interface IAdminService {
	public int register(Admin admin);
	public Admin checkLogin(String email, String password);
	public Admin searchAdminById(Integer id);
}
