package com.callcenter.formbean;

import java.util.HashMap;

public class RegistrationForm {
	
	private int userid;
	private String firstName;
	private String lstName;
	private String userName;
	private String password;
	private String address;
	private String city;
	private String state;
	private String country;
	private String squestion;
	private String sanswer;
	private String email;
	private String zip;
	private String income;
	private String mobno;
	private HashMap countryList;
	private HashMap stateList;
	private HashMap incomeList;
	private HashMap squestionList;
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public HashMap getCountryList() {
		return countryList;
	}
	public void setCountryList(HashMap countryList) {
		this.countryList = countryList;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getIncome() {
		return income;
	}
	public void setIncome(String income) {
		this.income = income;
	}
	public HashMap getIncomeList() {
		return incomeList;
	}
	public void setIncomeList(HashMap incomeList) {
		this.incomeList = incomeList;
	}
	public String getLstName() {
		return lstName;
	}
	public void setLstName(String lstName) {
		this.lstName = lstName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSanswer() {
		return sanswer;
	}
	public void setSanswer(String sanswer) {
		this.sanswer = sanswer;
	}
	public String getSquestion() {
		return squestion;
	}
	public void setSquestion(String squestion) {
		this.squestion = squestion;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public HashMap getStateList() {
		return stateList;
	}
	public void setStateList(HashMap stateList) {
		this.stateList = stateList;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public HashMap getSquestionList() {
		return squestionList;
	}
	public void setSquestionList(HashMap squestionList) {
		this.squestionList = squestionList;
	}
	public String getMobno() {
		return mobno;
	}
	public void setMobno(String mobno) {
		this.mobno = mobno;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
}
