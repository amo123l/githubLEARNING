package com.callcenter.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.callcenter.dao.DBUtilDaoImp;
import java.sql.*;
public class TicketSearch extends HttpServlet {
	
	public void service(HttpServletRequest request,HttpServletResponse response)
	{
		RequestDispatcher rd=null;
		try{
		String ticketno=request.getParameter("ticketno");
		System.out.println(ticketno);
		
		ResultSet rs=DBUtilDaoImp.getConnection().createStatement().executeQuery("select * from createticket where ticketno='"+ticketno+"'");
	if(rs.next())
	{
		String descrption=rs.getString("Qdescription");
		Date date=	rs.getDate("date");
		String status=rs.getString("status");
		String category=rs.getString("category");
		request.setAttribute("descrption", descrption);
		request.setAttribute("date", date);
		request.setAttribute("status", status);
		request.setAttribute("category",category);
				rd= request.getRequestDispatcher("customer-ticket-information.jsp");
		rd.forward(request,response);
		
	}
	else
	{
		rd= request.getRequestDispatcher("customer-tickets.jsp");
		rd.forward(request,response);
		
	}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
