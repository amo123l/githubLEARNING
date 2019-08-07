package com.callcenter.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.callcenter.formbean.RegistrationForm;
import com.callcenter.formbean.TicketForm;

public class TicketDaoImpl implements TicketDao {

	public RegistrationForm mobnomatch(String mobno) {
		// TODO Auto-generated method stub
		ResultSet rs=null;
		int userid=0;
		String securityid=null;
		System.out.println(mobno);
		RegistrationForm registrationForm=new RegistrationForm();
		try{
		Connection con=DBUtilDaoImp.getConnection();
		Statement stmt=DBUtilDaoImp.createStatement(con);
		 rs=DBUtilDaoImp.executeQuery(stmt,"select User_id,security_id,security_answer from user_master where mobile_no='"+mobno+"'");
		
		if(rs.next())
		{
			 userid=rs.getInt("User_id");
			 securityid=rs.getString("security_id");
			String securityans=rs.getString("security_answer");
			registrationForm.setUserid(userid);
			registrationForm.setSanswer(securityans);
		
		 rs=DBUtilDaoImp.executeQuery(stmt, "select security_question from securityqa where security_id='"+securityid+"'");
		 if(rs.next())
			
		   {
			String securityquestion=rs.getString("security_question");
			registrationForm.setSquestion(securityquestion);
		    }
	    }
		else{
			registrationForm.setUserid(0);
		}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return registrationForm;
	}

}
