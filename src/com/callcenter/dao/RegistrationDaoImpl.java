package com.callcenter.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;

import com.callcenter.formbean.RegistrationForm;

public class RegistrationDaoImpl implements RegistrationDao{

	public HashMap getCountry() throws Exception {
		HashMap hashMap=new HashMap();
		
		
		Connection con=DBUtilDaoImp.getConnection();
		Statement stmt=DBUtilDaoImp.createStatement(con);
		ResultSet rs=DBUtilDaoImp.executeQuery(stmt,"select country_id,country_type from country_master");
		while(rs.next())
		{
			String i=rs.getString("country_id");
			String type=rs.getString("country_type");
			System.out.println(i);
			System.out.println(type);
			
			
			hashMap.put(i,type);
			
			
		}
		
		// TODO Auto-generated method stub
		return hashMap;
	}

	public HashMap getState(String id) throws Exception {
		// TODO Auto-generated method stub
		
		HashMap hashMap=new HashMap();
		Connection con=DBUtilDaoImp.getConnection();
		Statement stmt=DBUtilDaoImp.createStatement(con);
		ResultSet rs=DBUtilDaoImp.executeQuery(stmt,"select State_id,State_type from State_master where country_id='"+id+"'");
		while(rs.next())
		{
			String i=rs.getString("State_id");
			String type=rs.getString("State_type");
			System.out.println(i);
			System.out.println(type);
			
			
			hashMap.put(i,type);
			
			
		}
		
	
		return hashMap;
	}

	public int insertdata(RegistrationForm form) throws Exception {
		Connection con=DBUtilDaoImp.getConnection();
		Statement stmt=DBUtilDaoImp.createStatement(con);
		String fname=form.getFirstName();
		String lname=form.getLstName();
		String uname=form.getUserName();
		String password=form.getPassword();
		String address=form.getAddress();
		String city=form.getCity();
		String state=form.getState();
		String country=form.getCountry();
		String income=form.getIncome();
		String emai=form.getEmail();
		String squestion=form.getSquestion();
		String sanswer=form.getSanswer();
		String mobno=form.getMobno();
		String zip=form.getZip();
		
		String sql="insert into user_master (first_name,Last_name,Login_name,password,address,city,state_id,Country_id,Income_id,Email,security_id,security_answer,mobile_no,zip,Role_id) values('"+fname+"','"+lname+"','"+uname+"','"+password+"','"+address+"','"+city+"','"+state+"','"+country+"','"+income+"','"+emai+"','"+squestion+"','"+sanswer+"','"+mobno+"','"+zip+"',3)";
		int i=stmt.executeUpdate(sql);
		return i;
	}

	public HashMap getIncome() throws Exception {
HashMap hashMap=new HashMap();
		
		
		Connection con=DBUtilDaoImp.getConnection();
		Statement stmt=DBUtilDaoImp.createStatement(con);
		ResultSet rs=DBUtilDaoImp.executeQuery(stmt,"select Income_id,Income_type from income_master");
		while(rs.next())
		{
			String i=rs.getString("Income_id");
			String type=rs.getString("Income_type");
			System.out.println(i);
			System.out.println(type);
			
			
			hashMap.put(i,type);
			
			
		}
		
		// TODO Auto-generated method stub
		return hashMap;
	}

	public HashMap getQuestion() throws Exception {
HashMap hashMap=new HashMap();
		
		
		Connection con=DBUtilDaoImp.getConnection();
		Statement stmt=DBUtilDaoImp.createStatement(con);
		ResultSet rs=DBUtilDaoImp.executeQuery(stmt,"select security_id,security_question from securityqa");
		while(rs.next())
		{
			String i=rs.getString("security_id");
			String type=rs.getString("security_question");
			System.out.println(i);
			System.out.println(type);
			
			
			hashMap.put(i,type);
			
	}
		return hashMap;
}
}
