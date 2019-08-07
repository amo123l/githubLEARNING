package com.callcenter.Service;

import java.util.List;


import com.callcenter.formbean.loginform;

public interface LoginService {
public loginform authenticate (String user_name,String password)throws Exception;
	
	public int deleteUser(String userName)throws Exception;
	
	public int insertUser(String name,String userName,String password,String retypePassword,String projectModule,String emailId,String phoneno,String type)throws Exception;
	
	public List selectAllUser()throws Exception;
	
	public int updateUser(String userName1, String password,String retypePassword,String projectModule,String emailId,String phoneno,String type)throws Exception;

}
