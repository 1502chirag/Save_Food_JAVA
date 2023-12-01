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
 		<%@include file="AdminNav.jsp" %>
		<%@include file="AdminHeaderNav.jsp" %>
  <body>
     <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title"> Add Organization</h3>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Add Organization</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Organization</li>
                </ol>
              </nav>
            </div>
		
              <div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Add Organization</h4>
                    <p class="card-description"> </p>
        			 <form action="../OrganizationController" method="post">
                      <div class="form-group">
                        <label for="exampleInputName1">Organization Name</label>
                        <input type="text" class="form-control" name="oname" id="exampleInputName1" placeholder="Name">
                      </div>
                      <div class="form-group">
                        <label for="ownerName">Owner Name</label>
                        <input type="text" class="form-control"  name="owname" id="ownerName" placeholder="Owner Name">
                      </div>
                       <div class="form-group">
                        <label for="exampleSelectGender">Gender</label>
                        <select class="form-control" name="gender" id="exampleSelectGender">
                          <option value="male">Male</option>
                          <option value="female">Female</option>
                        </select>
                      	</div> 
                      	<div class="form-group">
                        	<label for="exampleTextarea1">Address</label>
                        	<textarea class="form-control"  name="address" id="exampleTextarea1" rows="4"></textarea>
                      	</div>
                      <div class="form-group">
                        <label for="exampleSelectArea">Area</label>
                        <input type="text" class="form-control"  name="Area" id="Area" placeholder="Area">
                      	</div> 
                      
                      <div class="form-group">
                        <label for="exampleInputMobile1" >Mobile No.1</label>
                        
                          <input type="text" class="form-control"  name="mono1" id="exampleInputMobile1" placeholder="Mobile number 1">
                        
                      </div>
                       <div class="form-group">
                        <label for="exampleInputMobile2" >Mobile No.2</label>
                       
                          <input type="text" class="form-control" name="mono2" id="exampleInputMobile" placeholder="Mobile number 2">
                       
                      </div>
                      <div class="form-group">
                        <label for="exampleInputNoonTime">Noon Time</label>
                          <select class="form-control" name="ntime" id="exampleInputNoonTime">
                          <option value="After 12:00 PM">After 12:00 PM</option>
                          <option value="Before 12:00 PM">Before 12:00 PM</option>
                        </select>
                       
                      </div>
                      
                      <div class="form-group">
                        <label for="exampleInputEveningTime">Evening Time</label>
                        <select class="form-control" name="etime" id="exampleInputEveningTime">
                          <option value="Before 7:00 PM">Before 7:00 PM</option>
                          <option value="Between 7:00 PM TO 10:00 PM">Between 7:00 PM TO 10:00 PM</option>
                          <option value="After 10:00 PM">After 10:00 PM</option>
                        </select>
                       
                      </div>
                      
                      <button type="submit" class="btn btn-primary mr-2">Submit</button>
                      <button class="btn btn-dark">Cancel</button>
                      
                    </form>
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
</body>
</html>