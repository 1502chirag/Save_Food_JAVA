package com.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.AdminSubServicesModel;
import com.utill.RegistrationUtill;

public class AdminSubServicesDoa
{
	Connection cn=null;
	int x=0;
	public int addSubServices(AdminSubServicesModel ssm)
	{
		Connection cn=new RegistrationUtill().getConnectionData();
		String qry="insert into food(serviceid,type,Details,person) values(?,?,?,?)";
		try {
			PreparedStatement st=cn.prepareStatement(qry);
			st.setInt(1, ssm.getServiceid());
			st.setString(2, ssm.getType());
			st.setString(3,ssm.getDetails());
			st.setString(4, ssm.getPerson());
			x=st.executeUpdate();
			cn.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return x;
		
	}
}
