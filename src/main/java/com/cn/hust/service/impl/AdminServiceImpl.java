	package com.cn.hust.service.impl;



import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hust.dao.IAdminDao;
import com.cn.hust.dao.IUserDao;
import com.cn.hust.pojo.Admin;
import com.cn.hust.pojo.User;
import com.cn.hust.service.IAdminService;

@Service("adminService")
public class AdminServiceImpl implements IAdminService{
	@Resource
	private IAdminDao adminDao;
	@Override
	public int register(Admin admin){
		return this.adminDao.insert(admin);
	}
	
	@Override
    public Admin checkLogin(String email, String password){
		Admin admin = adminDao.selectByEmail(email);
		if(admin != null && admin.getaPassword().equals(password)){
			return admin;
		}
		return null;
	}

    @Override
    public Admin searchAdminById(Integer id){
    	return this.adminDao.selectByPrimaryKey(id);
    }
    
    
}
