package com.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.OrganizationModel;
import com.mysql.jdbc.ResultSet;
import com.utill.AdminUtill;

public class OrganizationDao 
{
	Connection cn=null;
	int x=0;
	public int setRecord(OrganizationModel om)
	{
		cn=new AdminUtill().getConnectionAdmin();
		String qry="insert into organization(organizationname,ownername,gender,address,area,mobileno1,mobileno2,noontime,eventime) values(?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1,om.getOrganizationname());
			st.setString(2, om.getOwnername());
			st.setString(3, om.getGender());
			st.setString(4, om.getAddress());
			st.setString(5, om.getArea());
			st.setString(6, om.getMobileno1());
			st.setString(7, om.getMobileno2());
			st.setString(8, om.getNoontime());
			st.setString(9,om.getEventime());
			x=st.executeUpdate();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
				
		return x;	
		}
}
