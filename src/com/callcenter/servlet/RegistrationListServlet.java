package com.callcenter.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.callcenter.Service.RegistrationService;
import com.callcenter.Service.RegistrationServiceImpl;
import com.callcenter.formbean.RegistrationForm;

public class RegistrationListServlet extends HttpServlet {
	
	public void service(HttpServletRequest request,HttpServletResponse response)
	
	{RegistrationForm registrationForm;
		try{
		RegistrationService registrationService=new RegistrationServiceImpl();
	 
	 
	//country List
		registrationForm=	registrationService.getCountry();
	request.setAttribute("country", registrationForm);
	//state List
	//registrationForm=	registrationService.getState();
	//request.setAttribute("state", registrationForm);
	
	//Income List
	registrationForm=registrationService.getIncomes();
	request.setAttribute("income", registrationForm);
	//security Question
	registrationForm=registrationService.getQuestion();
	request.setAttribute("quetion", registrationForm);
		RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");
		rd.forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
