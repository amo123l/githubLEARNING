package com.callcenter.dao;

import java.util.HashMap;

import com.callcenter.formbean.RegistrationForm;

public interface RegistrationDao {
	
	public HashMap getCountry()  throws Exception;
	public HashMap getState(String id) throws Exception;
	public HashMap getIncome() throws Exception;
	public HashMap getQuestion() throws Exception;
	public int insertdata(RegistrationForm form)throws Exception;

}
