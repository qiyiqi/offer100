package com.cn.hust.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cn.hust.pojo.Company;
import com.cn.hust.pojo.Job;
import com.cn.hust.service.ICompanyService;
import com.cn.hust.service.IJobService;

@Controller
@RequestMapping("/company")
public class CompanyController {
	@Resource
	private ICompanyService companyService;
	@Resource
	private IJobService jobService;
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(Company company,Model model,HttpServletRequest request) throws Exception{
		Date date = new Date();
		company.setcTime(date);
		company.setcFlag(0);
		int flag = companyService.register(company);
		if (flag!=0){
			model.addAttribute("company",company);
			return "reglog/com_login";
		}
		return "registerFail";	
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Company company,Model model,HttpServletRequest request){
		company = companyService.checkLogin(company.getcEmail(), company.getcPassword());
		if (company!=null){
			model.addAttribute("company",company);
			HttpSession session = request.getSession(true);
			session.setAttribute("companyid", company.getcId());
			return "../page/company";
		}
		return "registerFail";
	}
	
	@RequestMapping("/edit")  
    public String editNews(HttpServletRequest request,Model model){  
        HttpSession session = request.getSession(false);
		int id = (int) session.getAttribute("companyid");
		Company company = companyService.getCompanyByid(id);
		model.addAttribute("company",company);
        return "../page/updatecompany"; 
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateCompanyinfo(Company company,Model model,HttpServletRequest request){
		HttpSession session = request.getSession(false);
		int id = (int) session.getAttribute("companyid");
		company.setcId(id);
		model.addAttribute("company",company);
		int flag = companyService.updateCompanyinfo(company);
		if (flag!=0){
			return "../page/companyhome";
		}
		return "registerFail";
	}
	
	@RequestMapping(value="/publishjob",method=RequestMethod.POST)
	public String publish(Job job,Model model,HttpServletRequest request)throws Exception{
		HttpSession session = request.getSession(false);
		int id = (int) session.getAttribute("companyid");
		Date date = new Date();	
		job.setcId(id);
		job.setjTime(date);
		int check= jobService.publishJob(job);
		if (check==1){
			model.addAttribute("job",job);
			return "../page/companyhome";
		}
		return "registerFail";
	}
	
	@RequestMapping(value="/joblist",method=RequestMethod.GET)
	public String getNewsList(Model model,HttpServletRequest request)throws Exception{
		HttpSession session = request.getSession(false);
		int id = (int) session.getAttribute("companyid");
		List<Job> jobList = jobService.getJobforcompany(id);
		StringBuffer list = new StringBuffer();
		for (int i = 0; i < jobList.size(); i++){
			Job job = jobList.get(i);
			int jobId = job.getjId();
			list.append("<tr><td class=\"center\">"+job.getjName()
			+"</td><td class=\"center\">"+job.getjLocation()+"</td><td class=\"center\">"+job.getjTime()
			+"</td><td class=\"center\">"+job.getjSalary()+"</td>"
			+"<td class=\"center\"><a class=\"btn btn-success\" href=\"/offer100/company/showjob?id="+jobId+"\"><i class=\"glyphicon glyphicon-zoom-in icon-white\"></i>View</a><a class=\"btn btn-info\" href=\"/offer100/company/editjob?id="+jobId+"\"><i class=\"glyphicon glyphicon-edit icon-white\"></i>Edit</a><a class=\"btn btn-danger\" href=\"/offer100/company/deletejob?id="+jobId+"\"><i class=\"glyphicon glyphicon-trash icon-white\"></i>Delete</a></td></tr>");
	    }
		model.addAttribute("list",list);		
		return "../page/companyjob";
	}
	
	@RequestMapping("/showjob")  
    public String toIndex(HttpServletRequest request,Model model){  
        int jobId = Integer.parseInt(request.getParameter("id"));  
        Job job = this.jobService.getJobByid(jobId);
        model.addAttribute("job", job);  
        return "../page/showjob";  
    } 
	
	@RequestMapping("/editjob")  
    public String editjob(HttpServletRequest request,Model model){  
		int jobId = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession(true);
		session.setAttribute("jobid", jobId);
        Job job = this.jobService.getJobByid(jobId);
        model.addAttribute("job", job);  
        return "../page/editjob";  
	}
	
	@RequestMapping(value="/updatejob",method=RequestMethod.POST)
	public String updateJobinfo(Job job,Model model,HttpServletRequest request){
		HttpSession session = request.getSession(false);
		int id = (int) session.getAttribute("jobid");
		job.setjId(id);
		int flag = jobService.updateJobinfo(job);
		model.addAttribute("job",job);
		return "../page/editjob"; 
	}
	
	@RequestMapping("/deletejob")
	public String deleteNews(HttpServletRequest request){
		int jobId = Integer.parseInt(request.getParameter("id"));
		int check = this.jobService.deleteJobByid(jobId);
		return "../page/companyhome";	
	}
}
