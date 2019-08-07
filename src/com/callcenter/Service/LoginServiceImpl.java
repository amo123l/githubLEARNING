package com.callcenter.Service;

import java.util.List;

import com.callcenter.dao.LoginDao;
import com.callcenter.dao.LoginDaoImpl;
import com.callcenter.formbean.loginform;

public class LoginServiceImpl implements LoginService {

	public loginform authenticate(String user_name, String password) throws Exception {
		// TODO Auto-generated method stub
		
		LoginDao login=new LoginDaoImpl();
		
		loginform form=new loginform();
		form=(loginform)login.authenticate(user_name, password);
		return form;
		
		
		
		
	}

	public int deleteUser(String userName) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertUser(String name, String userName, String password, String retypePassword, String projectModule, String emailId, String phoneno, String type) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	public List selectAllUser() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateUser(String userName1, String password, String retypePassword, String projectModule, String emailId, String phoneno, String type) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
