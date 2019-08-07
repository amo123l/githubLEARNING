package com.callcenter.Service;

import java.util.HashMap;

import com.callcenter.dao.RegistrationDao;
import com.callcenter.dao.RegistrationDaoImpl;
import com.callcenter.formbean.RegistrationForm;

public class RegistrationServiceImpl implements RegistrationService {
	RegistrationForm registrationForm=new RegistrationForm();
	RegistrationDao registrationDao=new RegistrationDaoImpl();
	public RegistrationForm getCountry() throws Exception {
		// TODO Auto-generated method stub
		
		
		HashMap hashMap=registrationDao.getCountry();
		registrationForm.setCountryList(hashMap);
		
		System.out.println(hashMap);
		
		return registrationForm;
		
	}

	public RegistrationForm getState(String id) throws Exception {
		// TODO Auto-generated method stub
		HashMap hashMap=registrationDao.getState(id);
		registrationForm.setStateList(hashMap);
		return registrationForm;
	}

	public int insertdata(RegistrationForm registrationForm) throws Exception {
		int i=registrationDao.insertdata(registrationForm);
		return i;
	}

	public RegistrationForm getIncomes() throws Exception {
		// TODO Auto-generated method stub
		HashMap hashMap=registrationDao.getIncome();
		registrationForm.setIncomeList(hashMap);
		return registrationForm;
	}

	public RegistrationForm getQuestion() throws Exception {
		// TODO Auto-generated method stub
		
		HashMap hashMap=registrationDao.getQuestion();
		registrationForm.setSquestionList(hashMap);
		
		
		return registrationForm;
	}

}
