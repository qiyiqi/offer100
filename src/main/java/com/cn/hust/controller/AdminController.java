package com.cn.hust.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cn.hust.pojo.Admin;
import com.cn.hust.pojo.Company;
import com.cn.hust.pojo.User;
import com.cn.hust.service.IAdminService;
import com.cn.hust.service.ICompanyService;
import com.cn.hust.service.IUserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Resource
    private IAdminService adminService;
    @Resource
    private IUserService userService;
    @Resource
    private ICompanyService companyService;
    @RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Admin admin,Model model,HttpServletRequest request){
		admin = adminService.checkLogin(admin.getaEmail(), admin.getaPassword());
		if (admin!=null){
			model.addAttribute("admin",admin);
			HttpSession session = request.getSession(true);
			session.setAttribute("adminid", admin.getaId());
			return "../page/admMain";
		}
		return "registerFail";
	}
    @RequestMapping(value="/UserList",method=RequestMethod.GET)
    public String adminGetUserList(Model model,HttpServletRequest request){
    	HttpSession session = request.getSession(false);
		List<User> userList = userService.findAllUser();
		StringBuffer list = new StringBuffer();
		for (int i = 0; i < userList.size(); i++){
			User user = userList.get(i);
			int userId = user.getuId();
			list.append("<tr><td>"+userId+"</td><td class=\"center\">"+user.getuName()
			+"</td><td class=\"center\">"+user.getuEmail()+"</td><td class=\"center\">"+user.getuPhone()
			+"</td><td class=\"center\">"+user.getuPhoto()+"</td>"
			+"<td class=\"center\"><a class=\"btn btn-success\" href=\"/offer100/admin/showUser?id="+userId+"\"><i class=\"glyphicon glyphicon-zoom-in icon-white\"></i>View</a><a class=\"btn btn-info\" href=\"/offer100/admin/editUser?id="+userId+"\"><i class=\"glyphicon glyphicon-edit icon-white\"></i>Edit</a><a class=\"btn btn-danger\" href=\"/offer100/admin/deleteUser?id="+userId+"\"><i class=\"glyphicon glyphicon-trash icon-white\"></i>Delete</a></td></tr>");
        }
		model.addAttribute("list",list);
        return "../userMaintain";
    	
    }
    @RequestMapping(value="/showUser",method=RequestMethod.GET)
    public String showUser_ind(HttpServletRequest request,Model model){
    	int userId = Integer.parseInt(request.getParameter("id"));
    	User user = this.userService.getUserById(userId);
    	model.addAttribute("user",user);
    	return "showUser";
    }
    @RequestMapping(value="/editUser")
    public String editUser(HttpServletRequest request,Model model){
    	HttpSession session = request.getSession(true);
    	
    	int userId = Integer.parseInt(request.getParameter("id"));
    	session.setAttribute("userid", userId);
    	User user = this.userService.getUserById(userId);
    	model.addAttribute("user",user);
    	return "editUser";
    }
    
    @RequestMapping(value="/editUserInfo",method=RequestMethod.POST)
    public String updateUserinfo(User user,Model model,HttpServletRequest request){
    	HttpSession session = request.getSession(false);
    	int id = (int) session.getAttribute("userid");
		user.setuId(id);
		int flag = userService.updateUserInfo(user);
		model.addAttribute("user",user);
	    return "editUser";    	
    }
    @RequestMapping(value="/deleteUser")
    public String deleteUser(HttpServletRequest request,Model model){

    	
    	int userId = Integer.parseInt(request.getParameter("id"));

    	int flag = this.userService.deleteUserById(userId);

    	return "../page/home";
    }
    
    @RequestMapping(value="/publishUser",method=RequestMethod.POST)
	public String publish(User user,Model model,HttpServletRequest request)throws Exception{
		HttpSession session = request.getSession(false);
		int check= userService.insertUser(user);
		if (check==1){
			model.addAttribute("user",user);
			return "../page/home";
		}
		return "registerFail";
	}
    @RequestMapping(value="/CompanyList",method=RequestMethod.GET)
    public String adminGetCompanyList(Model model,HttpServletRequest request){
    	HttpSession session = request.getSession(false);
		List<Company> companyList = companyService.searchCompanyByFlag(0);
		StringBuffer list = new StringBuffer();
		for (int i = 0; i < companyList.size(); i++){
			Company company = companyList.get(i);
			int companyId = company.getcId();
			list.append("<tr><td>"+companyId+"</td><td class=\"center\">"+company.getcName()
			+"</td><td class=\"center\">"+company.getcEmail()+"</td><td class=\"center\">"+company.getcPhone()
			+"</td><td class=\"center\">"+company.getcDescription()+"</td>"
			+"<td class=\"center\"><a class=\"btn btn-success\" href=\"/offer100/admin/showZeroCompany?id="+companyId+"\"><i class=\"glyphicon glyphicon-zoom-in icon-white\"></i>View</a></td></tr>");
        }
		model.addAttribute("list",list);
        return "../CompanysMatin";
    	
    }
    @RequestMapping(value="/showZeroCompany",method=RequestMethod.GET)
    public String showCompanyZero(HttpServletRequest request,Model model){
    	int companyId = Integer.parseInt(request.getParameter("id"));
    	Company company = this.companyService.getCompanyById(companyId);
    	model.addAttribute("company",company);
    	return "showCompanyZero";
    }
    @RequestMapping(value="/review",method=RequestMethod.POST)
    public String changeCompanyFlag(Company company,HttpServletRequest request,Model model){
    	HttpSession session = request.getSession(false);
    	int check= companyService.changeFlag(company);
    	
    	if (check!=0){
			model.addAttribute("company",company);
			return "../page/home";
		}
		return "registerFail";
    }
    @RequestMapping(value="/AllCompanyList",method=RequestMethod.GET)
    public String adminGetAllCompanyList(Model model,HttpServletRequest request){
    	HttpSession session = request.getSession(false);
		List<Company> companyList = companyService.searchAllCompany();
		StringBuffer list = new StringBuffer();
		for (int i = 0; i < companyList.size(); i++){
			Company company = companyList.get(i);
			int companyId = company.getcId();
			list.append("<tr><td>"+companyId+"</td><td class=\"center\">"+company.getcName()
			+"</td><td class=\"center\">"+company.getcEmail()+"</td><td class=\"center\">"+company.getcPhone()
			+"</td><td class=\"center\">"+company.getcDescription()+"</td>"
			+"<td class=\"center\"><a class=\"btn btn-success\" href=\"/offer100/admin/showAllCompany?id="+companyId+"\"><i class=\"glyphicon glyphicon-zoom-in icon-white\"></i>View</a></td></tr>");
        }
		model.addAttribute("list",list);
        return "../AllCompanyMatin";
    	
    }
    @RequestMapping(value="/showAllCompany",method=RequestMethod.GET)
    public String showALLCompany(HttpServletRequest request,Model model){
    	int companyId = Integer.parseInt(request.getParameter("id"));
    	Company company = this.companyService.getCompanyById(companyId);
    	model.addAttribute("company",company);
    	return "showAllCompany";
    }
}
