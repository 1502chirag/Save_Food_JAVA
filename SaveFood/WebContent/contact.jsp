<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="WishFund,business,company,agency,multipurpose,modern,bootstrap4">
  
  <meta name="author" content="themefisher.com">

  <title>savefood</title>

  <!-- bootstrap.min css -->
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

<body>
<%@ include file="HeaderSignout.jsp"%>
<section class="page-title bg-1">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block text-center">
          <span class="text-white">Contact Us</span>
          <h1 class="text-capitalize mb-4 text-lg">Get in Touch</h1>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section">
    <div class="container">
        <div class="row">
             <div class="col-lg-6 col-sm-12 ">
                <div class="contact-content">
                    <h2 class="mb-5">We’d love to hear from you! <br>Give us call, send us a message?</h2>
                    <ul class="address-block list-unstyled">
                        <li>
                            <h6 class="mb-2">Address</h6>
                           North Main Street,Brooklyn Australia
                        </li>
                        <li>
                            <h6 class="mb-2">email us</h6>
                            contact@mail.com
                        </li>
                        <li>
                            <h6 class="mb-2">Phone Number</h6>
                           +88 01672 506 744
                        </li>
                    </ul>

                    <ul class="social-icons list-inline mt-5">
                       <li> <h6 class="mb-3">Find us on social media</h6></li>
                        <li class="list-inline-item">
                            <a href="http://www.themefisher.com/"><i class="icofont-facebook mr-2"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a href="http://www.themefisher.com/"><i class="icofont-twitter mr-2"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a href="http://www.themefisher.com/"><i class="icofont-linkedin mr-2"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-5 col-sm-12 ">
                <div class="google-map mt-5 mt-lg-0">
                    <div id="map"></div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- contact form start -->
<section class="contact-wrap section-bottom">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                 <form id="contact-form" class="contact__form" method="post" action="https://demo.themefisher.com/wishfund/mail.php">
                    <span class="text-color">Send a message</span>
                    <h3 class="text-md mb-5">Contact Form</h3>
                 <!-- form message -->
                    <div class="row">
                        <div class="col-12">
                            <div class="alert alert-success contact__msg" style="display: none" role="alert">
                                Your message was sent successfully.
                            </div>
                        </div>
                    </div>
                    <!-- end message -->
                  <div class="row">
                      <div class="col-lg-6">
                           <div class="form-group">
                                <label>Your Name *</label>
                                <input name="name" type="text" class="form-control" >
                            </div>
                      </div>
                      <div class="col-lg-6">
                           <div class="form-group">
                            <label>Your Email *</label>
                            <input name="email" type="email" class="form-control" >
                        </div>
                      </div>
                      <div class="col-lg-6">
                           <div class="form-group">
                                <label>Your Subject *</label>
                                <input name="subjecte" type="text" class="form-control" >
                            </div>
                      </div>
                      <div class="col-lg-6">
                            <div class="form-group">
                                <label>Your Phone Number *</label>
                                <input name="phone" type="number" class="form-control" >
                            </div>
                      </div>
                  </div>
                    <div class="form-group mb-4">
                        <label>Your Message *</label>
                        <textarea name="message" class="form-control" rows="6"></textarea>
                    </div>
                    <button class="btn btn-main rounded" name="submit" type="submit">Send Message</button>
                </form>
            </div>
        </div>
    </div>
</section>

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