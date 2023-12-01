
<%@page import="com.model.RegistrationModel"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.model.RegistrationModel"%>
<%@page import="com.utill.AdminUtill"%>
<%@page import="java.sql.Connection"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>savefood</title>
</head>
<body>
<%@ include file="header.jsp"%>
<%
	RegistrationModel mod=null;
	Connection cn=new AdminUtill().getConnectionAdmin();
	PreparedStatement st=cn.prepareStatement("select * from organization where organizationid=?");
	try{
		int oid=Integer.parseInt(request.getParameter("oid"));
		st.setInt(1,oid);
		ResultSet rs=st.executeQuery();
		if(rs.next())
		{
	
%>

<section class="section event">
	<div class="container">
		<div class="row justify-content-center">
		
			<div class="col-lg">
				<div class="card event-item mb-4">
					  <img src="images/about/event-2.jpg" class="card-img-top" alt="...">
					  <div class="card-body">
					    <h3 class="card-title"><%=rs.getString(2) %></h3>
					  <ul class="list-group list-group-flush">
					  <li class="list-group-item"><strong>Name: </strong><%=rs.getString(2) %></li>
					  <li class="list-group-item"><strong>Owner Name : </strong><%=rs.getString(3) %></li>
					  <li class="list-group-item"><strong>Owner gender: </strong><%=rs.getString(4) %></li>
					  <li class="list-group-item"><strong>Address : </strong><%=rs.getString(5) %></li>
					    <li class="list-group-item"><strong>Area : </strong><%=rs.getString(6) %> </li>
					    <li class="list-group-item"><strong>Mobile no.1 : </strong><%=rs.getString(7) %></li>
					    <li class="list-group-item"><strong>Mobile no.2: </strong><%=rs.getString(8) %></li>
					    <li class="list-group-item"><strong>Noontime: </strong><%=rs.getString(9) %></li>
					    <li class="list-group-item"><strong>Eventime: </strong><%=rs.getString(10) %></li>
 						<a class="btn btn-main-2" href="Doner.jsp?oid=<%=rs.getInt(1) %>">donate now</a>

											  </ul>
<%
		}
	}catch (Exception e) {
		
		e.printStackTrace();
	}

	 %>
				</div>
			</div>
			</div>

</div>
</div>
</section>

</body>
</html>