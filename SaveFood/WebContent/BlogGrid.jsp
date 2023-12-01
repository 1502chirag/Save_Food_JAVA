<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  <!-- Icon Font Css -->
  <link rel="stylesheet" href="plugins/themify/css/themify-icons.css">
  <link rel="stylesheet" href="plugins/icofont/icofont.css">
  <link rel="stylesheet" href="plugins/magnific-popup/dist/magnific-popup.css">
  <!-- Owl Carousel CSS -->
  <link rel="stylesheet" href="plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="plugins/slick-carousel/slick/slick-theme.css">
  <link rel="stylesheet" href="plugins/modal-video/modal-video.min.css">

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="css/style.css">
  <script language="javascript" type="text/javascript">  
 
      </script> 
</head>
<body>
<%@ include file="header.jsp"%>
<section class="page-title bg-1">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block text-center">
          <span class="text-white">Our blog</span>
          <h1 class="text-capitalize mb-4 text-lg">Blog articles</h1>
        </div>
      </div>
    </div>
  </div>
</section>
						<form name="viform" >
						<div class="form-row">
						    <div class="form-group col-md-4">
						      <label>Time</label>
						      <select id="inputtime"  name="time" class="form-control">
						       <option value='-1'></option>  
						        <option value="" onclick=""> noon time </option>
						         <option value="eventime">even time</option>
						         </select>
						        </div>
						       </div>
						</form>
						<table>
						<tr>
						<td id='state'><select name='state' >  
      					<option value='-1'></option>  
      					</select>
      					</td>
       					<td id='city'> <select name='city' >  
      <option value='-1'></option>  
      </select>   
      </td>
      </tr>
						</table>
						    <span id="tops"></span>
<%@ include file="footer.jsp"%>
  <!-- Main jQuery -->
    <script src="plugins/jquery/jquery.js"></script>
    <script src="js/contact.js"></script>
    <!-- Bootstrap 4.3.1 -->
    <script src="plugins/bootstrap/js/popper.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
   <!--  Magnific Popup-->
    <script src="plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
    <!-- Slick Slider -->
    <script src="plugins/slick-carousel/slick/slick.min.js"></script>
    <!-- Counterup -->
    <script src="plugins/counterup/jquery.waypoints.min.js"></script>
    <script src="plugins/counterup/jquery.counterup.min.js"></script>

    <script src="plugins/modal-video/jquery-modal-video.min.js"></script>

    <!-- Google Map -->
    <script src="plugins/google-map/map.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&amp;callback=initMap"></script>    
    
    <script src="js/script.js"></script>

</body>
</html>