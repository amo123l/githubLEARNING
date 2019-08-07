package com.callcenter.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.callcenter.Service.RegistrationService;
import com.callcenter.Service.RegistrationServiceImpl;
import com.callcenter.formbean.RegistrationForm;

public class RegistrationsaveServlet extends HttpServlet {
	
	/**
	 * 
	 */
	

	public void service(HttpServletRequest request,HttpServletResponse response)
	
	{
		try{
		
		RegistrationForm registrationForm =new RegistrationForm();
		
	RegistrationServiceImpl registrationService=new RegistrationServiceImpl();
	 
	String fname=request.getParameter("FirstName");
	String LastName=request.getParameter("LastName");
	String username=request.getParameter("username");
	String Password=request.getParameter("Password");
	String city=request.getParameter("city");
	String Address=request.getParameter("Address");
	String State=request.getParameter("State");
	String Income=request.getParameter("Income");
	 String countryid=request.getParameter("Country");
	 String Squestion=request.getParameter("Squestion");
	 String Sans=request.getParameter("Sans"); 
	 String mno=request.getParameter("mno");
	 String Zip=request.getParameter("Zip");
	 
	 String email=request.getParameter("email");
	 
	 
	System.out.println(fname);
	System.out.println(LastName);
	System.out.println(username);
	System.out.println(Password);
	System.out.println(Address);
	System.out.println(State);
	System.out.println(Income);
	System.out.println(countryid);
	System.out.println(Sans);
	System.out.println(mno);
	System.out.println(Zip);
	registrationForm.setFirstName(fname);
	registrationForm.setLstName(LastName);
	registrationForm.setUserName(username);
	registrationForm.setPassword(Password);
	registrationForm.setAddress(Address);
	registrationForm.setState(State);
	registrationForm.setCity(city);
	registrationForm.setCountry(countryid);
	registrationForm.setIncome(Income);
	registrationForm.setEmail(email);
	registrationForm.setSquestion(Squestion);
	registrationForm.setSanswer(Sans);
	registrationForm.setMobno(mno);
	registrationForm.setZip(Zip);
	int i=registrationService.insertdata(registrationForm);
	System.out.println(i);
	RequestDispatcher rd=request.getRequestDispatcher("registersuccess.html");
	rd.forward(request, response);
		}catch(Exception e)
		{
		e.printStackTrace();
		}
	}

}
