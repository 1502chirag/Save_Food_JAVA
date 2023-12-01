<%@page import="com.utill.AdminUtill"%>
<%@page import="javafx.scene.input.MouseButton"%>
<%@page import="java.lang.reflect.Executable"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.utill.RegistrationUtill"%>
<%@page import="java.sql.PreparedStatement"%>
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
    <link rel="stylesheet" href="../../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="../../assets/vendors/select2/select2.min.css">
    <link rel="stylesheet" href="../../assets/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../../assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../../assets/images/favicon.png" />
  </head>
<body>
	<%@include file="AdminNav.jsp" %>
	<%@include file="AdminHeaderNav.jsp" %>
	
 	<div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title"> Form elements </h3>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Services</a></li>
                  <li class="breadcrumb-item active" aria-current="page">SubServices</li>
                </ol>
              </nav>
            </div>
 			<div class="row">
              <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Add Sub Services</h4>
                    <p class="card-description">  </p>
                    <form class="forms-sample" method="post" action="../AdminSubServicesController">
                      <div class="form-group">
                      <label for="exampleFormControlSelect1">Please enter the subservices</label>
                      <select class="form-control form-control-lg" id="exampleFormControlSelect1" name="serviceid" >
                        <option value="0">Select main services</option>
                        	<%
                        		Connection cn=new AdminUtill().getConnectionAdmin();
                    		  	PreparedStatement st=cn.prepareStatement("select * from adminservices");
                    		  	ResultSet rs=st.executeQuery();
                    		  	while(rs.next())
                    		  	{
                        	%>
                        	<option value="<%=rs.getInt(1)%>"><%=rs.getString(2) %></option>
                        	<%
                        	
                    		  	}
                    		  	cn.close();
                        	%>
                        	
                      </select>
                    </div>
                    
                    
                     <%--  <%
                    	try{
                      		if(request.getParameter("exampleFormControlSelect1").equals("Food"))	
                      		{
                      		
                   	%> --%>
                     <div class="form-group">
                     	<label for="exampleInputType">Type</label>
                     	<input type="text" class="form-control" id="exampleInputType" name="type" placeholder="type">
                     </div>	  
                      <%-- <%
                      		}
                      	}catch(Exception e){
                    	  e.printStackTrace();
                      } --%>
                      		  
                      <div class="form-group">
                        <label for="exampleTextarea1">How many item in food Details</label>
                        <textarea class="form-control" id="exampleTextarea1" name="details" rows="4"></textarea>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPerson">How Many Person</label>
                        <input type="text" class="form-control" id="exampleInputPerson" name="person" placeholder="Person">
                      </div>
                       
                     
                      <button type="submit"  name="action" value="add"class="btn btn-primary mr-2">Add</button>
                      <button class="btn btn-dark">Cancel</button>
                    </form>
                  </div>
                </div>
              </div>
			</div>
		</div>
	</div>
	  <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="../../assets/vendors/select2/select2.min.js"></script>
    <script src="../../assets/vendors/typeahead.js/typeahead.bundle.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../../assets/js/off-canvas.js"></script>
    <script src="../../assets/js/hoverable-collapse.js"></script>
    <script src="../../assets/js/misc.js"></script>
    <script src="../../assets/js/settings.js"></script>
    <script src="../../assets/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="../../assets/js/file-upload.js"></script>
    <script src="../../assets/js/typeahead.js"></script>
    <script src="../../assets/js/select2.js"></script>
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