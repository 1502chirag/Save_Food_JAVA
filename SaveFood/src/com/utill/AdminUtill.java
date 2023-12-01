package com.utill;

import java.sql.Connection;
import java.sql.DriverManager;

public class AdminUtill 
{
	Connection cn=null;
	public Connection getConnectionAdmin()
	{
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/charity", "root", "");
			System.out.println("connection Established");
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return cn;
	}
}
