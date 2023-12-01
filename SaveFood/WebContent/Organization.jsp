<%@page import="java.util.function.Function"%>
<%@page import="com.model.RegistrationModel"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.utill.AdminUtill"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="HeaderSignout.jsp"%>
 
<%

	
	Connection cn=new AdminUtill().getConnectionAdmin();
	
	PreparedStatement st=cn.prepareStatement("select * from organization");
	ResultSet rs=st.executeQuery();
%>

<section class="section event">
	<div class="container">
		<div class="row justify-content-center">
		<%while(rs.next()){%>
		
			<div class="col-lg-4">
				<div class="card event-item mb-4">
					  <img src="images/about/event-2.jpg" class="card-img-top" alt="...">
					  <div class="card-body">
					    <h3 class="card-title"><a href="event-single.html"><%=rs.getString(2) %></a></h3>
					  <ul class="list-group list-group-flush">
					  <li class="list-group-item"><strong>Owner Name : </strong><%=rs.getString(3) %></li>
				
					   
					    <li class="list-group-item"><strong>Area : </strong><%=rs.getString(6) %> </li>
											  </ul>

					  <a class="btn btn-main-2" href="organaizationDetails.jsp?oid=<%=rs.getString(1) %>">Learn More</a>
				</div>
			</div>
			</div>
<%}
		%>

</div>
</div>
</section>

</body>
</html>