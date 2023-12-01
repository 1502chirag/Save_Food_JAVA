package com.model;

public class AdminSubServicesModel 
{
	private int serviceid,subserviceid;
	public int getSubserviceid() {
		return subserviceid;
	}
	public void setSubserviceid(int subserviceid) {
		this.subserviceid = subserviceid;
	}
	private String type,details,person;
	public int getServiceid() {
		return serviceid;
	}
	public void setServiceid(int serviceid) {
		this.serviceid = serviceid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	
}
