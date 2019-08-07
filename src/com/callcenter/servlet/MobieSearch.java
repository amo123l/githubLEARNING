package com.callcenter.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.callcenter.dao.TicketDaoImpl;
import com.callcenter.formbean.RegistrationForm;

public class MobieSearch extends HttpServlet {
	
	public void service(HttpServletRequest request,HttpServletResponse response)
	{
		RequestDispatcher rd=null;
		try{
		String mobno=request.getParameter("mobno");
		System.out.println(mobno);
		
		TicketDaoImpl ticketDaoImpl=new TicketDaoImpl();
	RegistrationForm registrationForm=(RegistrationForm)ticketDaoImpl.mobnomatch(mobno);
	if(registrationForm.getUserid()!=0)
	{
		request.setAttribute("question",registrationForm.getSquestion());
		request.setAttribute("answer",registrationForm.getSanswer());
		request.setAttribute("userIdCaller",registrationForm.getUserid());
		rd= request.getRequestDispatcher("create-tickets-match.jsp");
		rd.forward(request,response);
		
	}
	else
	{
		rd= request.getRequestDispatcher("create-tickets-mobno.jsp");
		rd.forward(request,response);
		
	}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
