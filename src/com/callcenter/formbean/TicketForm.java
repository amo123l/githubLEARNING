package com.callcenter.formbean;

import java.util.Date;

public class TicketForm {
	private Integer userid;
	private Integer ticketno;

	private String qdescription;

	private Date date;

	private String priority;

	private String loginName;

	private String category;

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getQdescription() {
		return qdescription;
	}

	public void setQdescription(String qdescription) {
		this.qdescription = qdescription;
	}

	public Integer getTicketno() {
		return ticketno;
	}

	public void setTicketno(Integer ticketno) {
		this.ticketno = ticketno;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}
}
