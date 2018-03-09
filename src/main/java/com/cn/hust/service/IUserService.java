package com.cn.hust.service;

import com.cn.hust.pojo.User;

public interface IUserService {
	public int register(User user);
	public User checkLogin(String email,String password);
	public int updateUserinfo(User user);
	public User getUserByid(int id);
}
