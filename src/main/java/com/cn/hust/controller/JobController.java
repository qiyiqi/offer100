package com.cn.hust.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cn.hust.pojo.Job;
import com.cn.hust.service.ICompanyService;
import com.cn.hust.service.IJobService;

@Controller
@RequestMapping("/job")
public class JobController {
	@Resource
	private IJobService jobService;
	@Resource
	private ICompanyService companyService;
	
	@RequestMapping(value="/joblist",method=RequestMethod.GET)
	public String getNewsList(Model model,HttpServletRequest request)throws Exception{
		List<Job> jobList = jobService.getJobList();
		StringBuffer list = new StringBuffer();
		for (int i = 0; i < jobList.size(); i++){
			Job job = jobList.get(i);
			int jobId = job.getjId();
			int companyId = job.getcId();
			Date jobDate = job.getjTime();
			DateFormat format= new SimpleDateFormat("yyyy-MM-dd");
			String dateString = format.format(jobDate);
			list.append("<tr><td class=\"center\">"+job.getjName()
			+"</td><td class=\"center\">"+companyService.getCompanyByid(companyId).getcName()
			+"</td><td class=\"center\">"+job.getjLocation()+"</td><td class=\"center\">"+job.getjSalary()
			+"</td><td class=\"center\">"+dateString+"</td>"
			+"<td class=\"center\"><a class=\"btn btn-success\" href=\"/offer100/job/showjob?id="+jobId+"\"><i class=\"glyphicon glyphicon-zoom-in icon-white\"></i>详情</a></td></tr>");
	    }
		model.addAttribute("list",list);		
		return "../page/joblist";
	}
	
	@RequestMapping("/showjob")  
    public String toIndex(HttpServletRequest request,Model model){  
        int jobId = Integer.parseInt(request.getParameter("id"));  
        Job job = this.jobService.getJobByid(jobId);
        int companyId = job.getcId();
        String companyName =  companyService.getCompanyByid(companyId).getcName();
        String companyEmail = companyService.getCompanyByid(companyId).getcEmail();
        model.addAttribute("job", job);  
        model.addAttribute("companyName", companyName);
        model.addAttribute("companyEmail", companyEmail);
        return "../page/showjobforuser";  
    } 
}
