package com.callcenter.dao;

import java.util.List;
import java.util.Map;





public interface MasterDataDao {
	
	//for country List
	public Map getCountryList(int country_id) throws Exception;
	public int addCountryList(int country_id,String country_name) throws Exception; 
	public Map modifyCountryList(int country_id)throws Exception;
	public int deletCountryList(int country_id)throws Exception;
	
	//for State List
	public Map getStateList(int state_id)throws Exception;
	public int addStateList(int state_id,String state_name) throws Exception; 
	public int modifyStateList(int state_id)throws Exception;
	public int deletStateList(int state_ids)throws Exception;
	
	//For Account Type
	
	public List getAccountType() throws Exception;
	public int addAccountType() throws Exception; 
	public int modifyAccountType()throws Exception;
	public int deletAccountType()throws Exception;
	
	//Plan
	
	public List getPlan(String account_type) throws Exception;
	public int addPlan(String account_type,String plan_name,int free_sms,int validity )throws Exception;
	public List modifyPlan(String account_type )throws Exception;
	public int deletePlan()throws Exception;


   //DND
   public int addCategories(int dnd_id,String Cat_name)throws Exception;
   public int deeteCategories(int dnd_id)throws Exception;
   public List modifyCategories(int dnd_id)throws Exception;
   public List getCategories(int dnd_id)throws Exception; 
   
   //Income
   public int addIncomeCategori(int income_id,String income_type,int income_from,int income_to)throws Exception;
   public int deleteIncomeCategori(int income_id)throws Exception;
   public List modifyIncomeCategori(int income_id)throws Exception;
   public List getIncomeCategori(int income_id,String income_type,int income_from,int income_to)throws Exception;
   
   
   
}