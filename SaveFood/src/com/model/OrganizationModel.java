package com.model;

public class OrganizationModel 
{
	private int organizationid;
	public int getOrganizationid() {
		return organizationid;
	}
	public void setOrganizationid(int organizationid) {
		this.organizationid = organizationid;
	}
	public String getOrganizationname() {
		return organizationname;
	}
	public void setOrganizationname(String organizationname) {
		this.organizationname = organizationname;
	}
	public String getOwnername() {
		return ownername;
	}
	public void setOwnername(String ownername) {
		this.ownername = ownername;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobileno1() {
		return mobileno1;
	}
	public void setMobileno1(String mobileno1) {
		this.mobileno1 = mobileno1;
	}
	public String getMobileno2() {
		return mobileno2;
	}
	public void setMobileno2(String mobileno2) {
		this.mobileno2 = mobileno2;
	}
	public String getNoontime() {
		return noontime;
	}
	public void setNoontime(String noontime) {
		this.noontime = noontime;
	}
	public String getEventime() {
		return eventime;
	}
	public void setEventime(String eventime) {
		this.eventime = eventime;
	}
	private String gender,organizationname,ownername,address,mobileno1,mobileno2,noontime,eventime,Area;
	public String getArea() {
		return Area;
	}
	public void setArea(String area) {
		Area = area;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
}
