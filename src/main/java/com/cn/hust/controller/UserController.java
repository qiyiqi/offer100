package com.cn.hust.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cn.hust.pojo.User;
import com.cn.hust.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private IUserService userService;
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(User user,Model model,HttpServletRequest request) throws Exception{
		int flag = userService.register(user);
		if (flag!=0){
			model.addAttribute("user",user);
			return "reglog/personal_login";
		}
		return "registerFail";	
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(User user,Model model,HttpServletRequest request){
		user = userService.checkLogin(user.getuEmail(), user.getuPassword());
		if (user!=null){
			model.addAttribute("user",user);
			HttpSession session = request.getSession(true);
			session.setAttribute("uId", user.getuId());
			return "../page/user";
		}
		return "registerFail";
	}
	
	@RequestMapping("/edit")  
    public String editUser(HttpServletRequest request,Model model){  
        HttpSession session = request.getSession(false);
		int id = (int) session.getAttribute("uId");
		User user = userService.getUserByid(id);
		model.addAttribute("user",user);
        return "../page/updateuser"; 
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateUserinfo(User user,Model model,HttpServletRequest request){
		HttpSession session = request.getSession(false);
		int id = (int) session.getAttribute("uId");
		user.setuId(id);
		model.addAttribute("user",user);
		int flag = userService.updateUserinfo(user);
		if (flag!=0){
			return "../page/userhome";
		}
		return "registerFail";
	}
}
