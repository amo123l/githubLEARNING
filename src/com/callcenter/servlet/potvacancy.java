package com.callcenter.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.callcenter.Service.RegistrationService;
import com.callcenter.Service.RegistrationServiceImpl;
import com.callcenter.dao.DBUtilDaoImp;
import com.callcenter.formbean.RegistrationForm;

public class potvacancy extends HttpServlet {
	
	/**
	 * 
	 */
	

	public void service(HttpServletRequest request,HttpServletResponse response)
	
	{
		try{
			String name=request.getParameter("vacancy");
			String skill=request.getParameter("skill");
			String descreption=request.getParameter("descreption");
			String designation=request.getParameter("designation");
			String exper=request.getParameter("exper");
			String salary=request.getParameter("salary");
	boolean flag=DBUtilDaoImp.getConnection().createStatement().execute("insert into post_vacancy (vacancyname,discreption,keyskill,designation,salaryrange,exper)values('"+name+"','"+descreption+"','"+skill+"','"+designation+"','"+salary+"','"+exper+"')");		
		
	
	RequestDispatcher rd=request.getRequestDispatcher("post-vacancy-success.html");
	rd.forward(request, response);
		}catch(Exception e)
		{
		e.printStackTrace();
		}
	}

}
