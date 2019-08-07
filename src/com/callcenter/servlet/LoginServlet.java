package com.callcenter.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.callcenter.Service.LoginService;
import com.callcenter.Service.LoginServiceImpl;
import com.callcenter.formbean.loginform;

public class LoginServlet extends HttpServlet {
	
	public void service(HttpServletRequest request, HttpServletResponse response) 
	{
		RequestDispatcher rd=null;
	String userName= request.getParameter("name");
	String password=request.getParameter("password");
	System.out.println(userName);
	System.out.println(password);
	loginform lform=new loginform();
	LoginService login=new LoginServiceImpl();
	HttpSession session=request.getSession();
	session.setAttribute("username", userName);
	
		try {
			lform=(loginform)login.authenticate(userName, password);
			
			
			if(lform.getUser_name().equalsIgnoreCase(userName))
			{
				if(lform.getUser_type().equalsIgnoreCase("Admin"))
				{
					System.out.println("ok");
					rd=request.getRequestDispatcher("after-admin-login-page.html");
					rd.forward(request, response);
				}
				else if(lform.getUser_type().equalsIgnoreCase("CustomerExecutive"))
				{
					rd=request.getRequestDispatcher("call-center-executive.html");
					rd.forward(request, response);	
				}
				else if(lform.getUser_type().equalsIgnoreCase("Customer"))
				{
					rd=request.getRequestDispatcher("customer-login.html");
					rd.forward(request, response);	
				}
				else if(lform.getUser_type().equalsIgnoreCase("HR"))
				{
					rd=request.getRequestDispatcher("login-after-hr.html");
					rd.forward(request, response);	
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
