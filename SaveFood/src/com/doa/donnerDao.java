package com.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.model.RegistrationModel;
import com.model.donner;
import com.utill.RegistrationUtill;

public class donnerDao {
	Connection cn =null;
	int x=0;
	public int doRegistration(donner dm)
	{
		cn=new RegistrationUtill().getConnectionData();
		String qry="insert into doner(oid,name,email,mobileno,time,gender,address,item) values(?,?,?,?,?,?,?,?)";
		
		try{
			PreparedStatement st=cn.prepareStatement(qry);
			st.setInt(1,dm.getOid());
			st.setString(2, dm.getName());
			
			st.setString(3,dm.getEmail());
			st.setString(4, dm.getMobileno());
			st.setString(5, dm.getTime());
			st.setString(6,dm.getGender());
			st.setString(7, dm.getAddress());
			st.setString(8, dm.getItem());
			x=st.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return x;
	}

}
