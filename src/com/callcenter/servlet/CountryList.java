package com.callcenter.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.callcenter.Service.RegistrationService;
import com.callcenter.Service.RegistrationServiceImpl;
import com.callcenter.formbean.RegistrationForm;

public class CountryList extends HttpServlet {
	
	
	public void service(HttpServletRequest request,HttpServletResponse response)
	{
		RegistrationForm registrationForm;
		try{
		RegistrationService registrationService=new RegistrationServiceImpl();
	 String id=request.getParameter("country");
	 System.out.println(id);
//			country List
			registrationForm=	registrationService.getState(id);
		request.setAttribute("state", registrationForm);
		System.out.println(registrationForm.getStateList());
			RequestDispatcher rd=request.getRequestDispatcher("stateList.jsp");
			rd.forward(request, response);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
