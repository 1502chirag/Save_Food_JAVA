package com.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.AdminServicesModel;

import com.utill.RegistrationUtill;

public class AdminServicesDoa 
{
	Connection cn=null;
	int x=0;
	public int addNewServices(AdminServicesModel rsm )
	{
		cn=new RegistrationUtill().getConnectionData();
		String qry="insert into adminServices(servicename) values(?)";
		try {
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1,rsm.getServicename());
			x=st.executeUpdate();
			cn.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return x;
	}
	
	
}
