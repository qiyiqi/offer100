package com.cn.hust.service;

import java.util.List;

import com.cn.hust.pojo.User;

public interface IUserService {
	public int register(User user);
	public User checkLogin(String email,String password);
	public int updateUserinfo(User user);
	public User getUserByid(int id);
	public User getUserById(Integer id);
	public int updateUserInfo(User user);
	public int deleteUserById(Integer id);
	public int insertUser(User user);
	public User searchUseByname(String name);
	public int deleteUseById(Integer id);
	public int updataUse(User use);
	public List<User> findAllUser();
}
