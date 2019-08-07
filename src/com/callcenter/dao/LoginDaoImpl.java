package com.callcenter.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import com.callcenter.formbean.loginform;

public class LoginDaoImpl implements LoginDao{

	public loginform authenticate(String user_name, String password) throws Exception {
    int rollid=0;
    ResultSet rs=null;
  loginform lf=new loginform();
  try{
	  Connection con=DBUtilDaoImp.getConnection();
	  Statement stmt=DBUtilDaoImp.createStatement(con);
	  rs=DBUtilDaoImp.executeQuery(stmt,"select Login_name,Role_id from user_master where Login_name='"+user_name+"' and password='"+password+"'");
	  while(rs.next())
	  {
		  lf.setUser_name(rs.getString("Login_name"));
		  rollid=rs.getInt("Role_id");
		  
	  }
	  rs=DBUtilDaoImp.executeQuery(stmt,"select user_type from role where Role_id='"+rollid+"'");
	  while(rs.next())
		  
	  {
		lf.setUser_type(rs.getString("user_type"));  
	  }
	  
  }catch(Exception e)
  {
	  e.printStackTrace();
  }
		return lf;
	}

	public int deleteUser(String userName) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertUser(String name, String userName, String password, String retypePassword, String emailId, String phoneno, String type) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	public List selectAllUser() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateUser(String userName1, String password, String projectModule, String emailId, String phoneno, String type) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
