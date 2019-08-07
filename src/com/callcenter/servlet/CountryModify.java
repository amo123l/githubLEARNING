package com.callcenter.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.callcenter.Service.RegistrationService;
import com.callcenter.Service.RegistrationServiceImpl;
import com.callcenter.formbean.RegistrationForm;

public class CountryModify extends HttpServlet {
	
	
	public void service(HttpServletRequest request,HttpServletResponse response)
	{
		try{
			RequestDispatcher rd=request.getRequestDispatcher("addcountry.jsp");
			rd.forward(request, response);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
