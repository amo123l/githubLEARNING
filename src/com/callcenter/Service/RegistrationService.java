package com.callcenter.Service;

import com.callcenter.formbean.RegistrationForm;

public interface RegistrationService {
	
	
	public RegistrationForm getCountry() throws Exception;
	public RegistrationForm getState(String id)throws Exception;
	public RegistrationForm getIncomes()throws Exception;
	public RegistrationForm getQuestion()throws Exception;
	public int insertdata(RegistrationForm registrationForm)throws Exception;

}
