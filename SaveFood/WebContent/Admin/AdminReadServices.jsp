<%@page import="com.model.AdminServicesModel"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.utill.AdminUtill"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Corona Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="assets/images/favicon.png" />
  </head>
  <body>
  <%@include file="AdminHeaderNav.jsp" %>
<%@include file="AdminNav.jsp" %>
		 <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title"> ReadServices </h3>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">ReadServices</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Services</li>
                </ol>
              </nav>
            </div>

			<div class="row">
              <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Basic Table</h4>
                    <p class="card-description"> Add class <code>.table</code>
                    </p>
                    <div class="table-responsive">
                    
                      <table class="table">
                      <% Connection cn=new AdminUtill().getConnectionAdmin();
                    		  	PreparedStatement st=cn.prepareStatement("select * from adminservices");
                    		  	ResultSet rs=st.executeQuery();
                    		  	%>
                        <thead>
                          <tr>
                            <th>Service id</th>
                            <th>Service Name</th>
                          </tr>
                        </thead>
                        <tbody>
                        <%
                        while(rs.next())
            		  	{ 
            		  	%>
                          <tr>
                            <td><%=rs.getInt(1) %></td>
                            <td><%=rs.getString(2) %></td>
                            <td><a class="btn btn-primary mr-2" href="../ReadServicesController?action=edituser&serviceid=<%= rs.getInt(1)%>">Edit</a></td>
                             <td><a class="btn btn-primary mr-2" href="../ReadServicesController?action=deleteservice&serviceid=<%= rs.getInt(1)%>">Delete</a></td>
                          </tr>
                          <%
            		  		}
                          %>
                           </tbody>
                      </table>
                      <% if((request.getParameter("serviceid")!=null))
                      {
                      %>
                        <form action="../ReadServicesController" method="post">
                          	<div class="form-group">
                          	   <label for="exampleInputType">ServiceName</label>
                     		
                     			<input type="text" class="form-control" id="exampleInputType" name="servicename" value="<%=request.getParameter("servicename") %>" placeholder="ServicesName"><input type="hidden" name="serviceid" value="<%=Integer.parseInt(request.getParameter("serviceid"))%>">
                     	 		<%-- <input type="text" class="form-control" id="exampleInputType" name="servicename" value="${au.servicename }" placeholder="ServicesName"><input type="hidden" name="serviceid" value="${au.serviceid}"> --%>
                     	 		<button type="submit" class="btn btn-primary mr-2">update</button>
                    		 </div>	 
                       </form>
                     <%} %>
                     
                    </div>
                  </div>
                </div>
              </div>
              </div>
                <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../../assets/js/off-canvas.js"></script>
    <script src="../../assets/js/hoverable-collapse.js"></script>
    <script src="../../assets/js/misc.js"></script>
    <script src="../../assets/js/settings.js"></script>
    <script src="../../assets/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <!-- End custom js for this page -->
	<script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="assets/vendors/chart.js/Chart.min.js"></script>
    <script src="assets/vendors/progressbar.js/progressbar.min.js"></script>
    <script src="assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
    <script src="assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <script src="assets/js/settings.js"></script>
    <script src="assets/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="assets/js/dashboard.js"></script>
    <!-- End custom js for this page -->
</body>
</html>