package com.callcenter.formbean;

public class MasterDataform {
	Country country;
	int stateid;
	String statename;
	int accountid;
	String accounttype;
	String planname;
	int freesms;
	int vaidity;
	int dndid;
	String dndname;
	int incomeid;
	int incomefrom;
	int incometo;
	int billid;
	String billtype;
	int rollid;
	String rolltype;
	private String countryname;
	private int countryid;
	
	public int getRollid() {
		return rollid;
	}
	public void setRollid(int rollid) {
		this.rollid = rollid;
	}
	public String getRolltype() {
		return rolltype;
	}
	public void setRolltype(String rolltype) {
		this.rolltype = rolltype;
	}
	public int getAccountid() {
		return accountid;
	}
	public void setAccountid(int accountid) {
		this.accountid = accountid;
	}
	public String getAccounttype() {
		return accounttype;
	}
	public void setAccounttype(String accounttype) {
		this.accounttype = accounttype;
	}
	public int getBillid() {
		return billid;
	}
	public void setBillid(int billid) {
		this.billid = billid;
	}
	public String getBilltype() {
		return billtype;
	}
	public void setBilltype(String billtype) {
		this.billtype = billtype;
	}
	public int getCountryid() {
		return countryid;
	}
	public void setCountryid(int countryid) {
		this.countryid = countryid;
	}
	public String getCountryname() {
		return countryname;
	}
	public void setCountryname(String countryname) {
		this.countryname = countryname;
	}
	public int getDndid() {
		return dndid;
	}
	public void setDndid(int dndid) {
		this.dndid = dndid;
	}
	public String getDndname() {
		return dndname;
	}
	public void setDndname(String dndname) {
		this.dndname = dndname;
	}
	public int getFreesms() {
		return freesms;
	}
	public void setFreesms(int freesms) {
		this.freesms = freesms;
	}
	public int getIncomefrom() {
		return incomefrom;
	}
	public void setIncomefrom(int incomefrom) {
		this.incomefrom = incomefrom;
	}
	public int getIncomeid() {
		return incomeid;
	}
	public void setIncomeid(int incomeid) {
		this.incomeid = incomeid;
	}
	public int getIncometo() {
		return incometo;
	}
	public void setIncometo(int incometo) {
		this.incometo = incometo;
	}
	public String getPlanname() {
		return planname;
	}
	public void setPlanname(String planname) {
		this.planname = planname;
	}
	public int getStateid() {
		return stateid;
	}
	public void setStateid(int stateid) {
		this.stateid = stateid;
	}
	public String getStatename() {
		return statename;
	}
	public void setStatename(String statename) {
		this.statename = statename;
	}
	public int getVaidity() {
		return vaidity;
	}
	public void setVaidity(int vaidity) {
		this.vaidity = vaidity;
	}
	
	

}
