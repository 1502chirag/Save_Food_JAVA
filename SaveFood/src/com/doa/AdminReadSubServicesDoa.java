package com.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.model.AdminSubServicesModel;
import com.utill.AdminUtill;

public class AdminReadSubServicesDoa 
{
	Connection cn=null;
	public AdminSubServicesModel getRecord(int subserviceid)
	{
		AdminSubServicesModel srmodel=null;
		cn=new AdminUtill().getConnectionAdmin();
		String qry="select * from food where subservicesid=?";
		
		try {
			
			PreparedStatement st=cn.prepareStatement(qry);
			st.setInt(1, subserviceid);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				srmodel=new AdminSubServicesModel();
				srmodel.setSubserviceid(rs.getInt(1));
				srmodel.setServiceid(rs.getInt(2));
				srmodel.setType(rs.getString(3));
				srmodel.setDetails(rs.getString(4));
				srmodel.setPerson(rs.getString(5));
				
			}cn.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		} 
		return srmodel;
		
	}
	public int getUpdate(AdminSubServicesModel subread)
	{
		int x=0;
		cn=new AdminUtill().getConnectionAdmin();
		String qry="update food set serviceid=? ,type=? ,details=?,person=? where subservicesid=?";
		try {
			PreparedStatement st=cn.prepareStatement(qry);
			st.setInt(1, subread.getServiceid());
			st.setString(2, subread.getType());
			st.setString(3, subread.getDetails());
			st.setString(4, subread.getPerson());
			st.setInt(5, subread.getSubserviceid());
			x=st.executeUpdate();
			cn.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return x;
	}
	public int getDelete(int subserviceid)
	{
		int x=0;
		cn=new AdminUtill().getConnectionAdmin();
		String qry="delete from food where subservicesid=?";
		try {
			PreparedStatement st=cn.prepareStatement(qry);
			st.setInt(1, subserviceid);
			x=st.executeUpdate();
			cn.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return x;
	}
}
