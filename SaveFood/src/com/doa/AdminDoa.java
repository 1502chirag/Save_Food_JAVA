package com.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.model.RegistrationModel;
import com.utill.AdminUtill;

public class AdminDoa 
{
	Connection cn=null;
	public RegistrationModel getAdminLogin(RegistrationModel amodel)
	{
		RegistrationModel admin=null;
		cn=new AdminUtill().getConnectionAdmin();
		String qry="select * from admin where email=? and password=? ";
		try {
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1,amodel.getEmail());
			st.setString(2, amodel.getPassword());
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				admin=new RegistrationModel();
				admin.setEmail(rs.getString(1));
				admin.setPassword(rs.getString(2));
				admin.setFirstname(rs.getString(3));
				admin.setLastname(rs.getString(4));
				admin.setPhonenumber(rs.getString(5));
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	
		return admin;
	}
}
