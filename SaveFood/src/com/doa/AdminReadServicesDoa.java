package com.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.model.AdminServicesModel;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
import com.utill.AdminUtill;

public class AdminReadServicesDoa 
{
	Connection cn=null;
	public AdminServicesModel getRecord(int serviceid)
	{
		AdminServicesModel ramodel=null;
		cn=new AdminUtill().getConnectionAdmin();
		String qry="select * from adminservices where serviceid=?";
		try {
			PreparedStatement st=cn.prepareStatement(qry);
			st.setInt(1, serviceid);

			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				ramodel=new AdminServicesModel();
				ramodel.setServiceid(rs.getInt(1));
				ramodel.setServicename(rs.getString(2));
				cn.close();
			}
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return ramodel;
	}
	public int updateUser(AdminServicesModel Aumodel )
	{
		int x=0;
		cn=new AdminUtill().getConnectionAdmin();
		String qry="update adminservices set servicename=? where serviceid=?";
		try {
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1, Aumodel.getServicename());
			st.setInt(2, Aumodel.getServiceid());
			x=st.executeUpdate();
			cn.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return x;
	}
	public int deleteuser(int serviceid)
	{
		int x=0;
		cn=new AdminUtill().getConnectionAdmin();
		String qry="delete from adminServices where serviceid=?";
		try {
			PreparedStatement st=cn.prepareStatement(qry);
			st.setInt(1, serviceid);
			x=st.executeUpdate();
			cn.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return x;
		
	}
	
		
}
