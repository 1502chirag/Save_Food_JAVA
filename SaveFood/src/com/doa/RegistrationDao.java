package com.doa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import com.model.RegistrationModel;
import com.utill.RegistrationUtill;
public class RegistrationDao 
{
	Connection cn =null;
	int x=0;
	public int doRegistration(RegistrationModel rmodel)
	{
		cn=new RegistrationUtill().getConnectionData();
		String qry="insert into registration(firstname,lastname,phonenumber,email,password) values(?,?,?,?,?)";
		
		try{
			PreparedStatement st=cn.prepareStatement(qry);
			st.setString(1, rmodel.getFirstname());
			st.setString(2,rmodel.getLastname());
			st.setString(3, rmodel.getPhonenumber());
			st.setString(4, rmodel.getEmail());
//			st.setString(5,rmodel.getGender());
			st.setString(5, rmodel.getPassword());
			x=st.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return x;
	}
	
}
