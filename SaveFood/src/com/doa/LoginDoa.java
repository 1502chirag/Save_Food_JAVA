package com.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.model.RegistrationModel;
import com.utill.RegistrationUtill;


public class LoginDoa 
{
	Connection cn=null;
	public RegistrationModel getlogin(RegistrationModel lmod)
	{
		RegistrationModel mod=null;
		cn=new RegistrationUtill().getConnectionData();
		String qry="select * from registration where email=? and password=? ";
		try {
			
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1, lmod.getEmail());
			st.setString(2, lmod.getPassword());
			ResultSet rs =st.executeQuery();
			
			if(rs.next())
			{
				mod=new RegistrationModel();
				mod.setIndex(rs.getInt(1));
				mod.setFirstname(rs.getString(2));
				mod.setLastname(rs.getString(3));
				mod.setPhonenumber(rs.getString(4));
				mod.setEmail(rs.getString(5));
				mod.setPassword(rs.getString(6));
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return mod;
	}
}
