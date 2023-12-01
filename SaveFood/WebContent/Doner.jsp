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

  <title>WishFund- Nonprofit Charity Funderising Theme</title>

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
</head>
<body>
<%@ include file="HeaderSignout.jsp"%>
<section class="page-title bg-1">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block text-center">
          <span class="text-white">Be a donate food</span>
          <h1 class="text-capitalize mb-4 text-lg">We need your help</h1>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="section volunteer-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<p class="lead">Help a child discover the joy of learning and join us in our efforts to put Every Child in School!</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto deserunt quo aliquid porro corrupti, pariatur, quaerat culpa libero sunt assumenda eos nihil facilis, inventore mollitia a? Excepturi sed, ex quam.</p>

				<div class="member-benifit mt-4">
					<h4>Volunteer benefits</h4>
					<p>As a volunteer you will get some good wishes:</p>

					<ul class="list-unstyled member-benifits-list lh-35">
						<li><strong>Wishes</strong> - you got the people good wishes,</li>
						<li><strong>Events</strong> - GIVING TO CHARITY MAKES YOU FEEL GOOD. ...</li>
						<li><strong>Community</strong> - GIVING TO CHARITY STRENGTHENS PERSONAL VALUES. ...</li>
						<li><strong>Networking</strong> -GIVING IS MORE IMPACTFUL THAN EVER. ...</li>
						<li><strong>Expertise </strong>-  GIVING TO CHARITY INTRODUCES YOUR CHILDREN TO THE IMPORTANCE OF GENEROSITY. .. </li>
					</ul>
				</div>
			</div>

			<div class="col-lg-6">
				<span class="text-color mt-5 mt-lg-0">Join With Us</span>
				<h2 class="mb-5 text-md">Become A Volunteer</h2>
				<form action="DonnerController" method="post" class="volunteer-form">
					<div class="form-group">
						<input type="hidden" name="oid" value="<%=request.getParameter("oid")%>">
						<input type="text" class="form-control" name="name" placeholder="Full Name">
					</div>
					<div class="form-group">
						<input type="email" class="form-control" name="email"placeholder="Emaill Address">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="mobileno" placeholder="Phone Number">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="time" placeholder="please mention here only time">
					</div>
					<div class="form-group">
						<select  class="form-control" name='gender' placeholder="gender">  
      					<option value='-1'>select</option> 
      					<option value="male">male</option>
      					<option value="female">Female</option>
     					 </select>
					</div>
					<div class="form-group">
						<textarea name="address" id="#"  rows="6" class="form-control" placeholder="Address"></textarea>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" rows="2"name="item" placeholder="please describe ehich type food you donate">
					</div>
					<button class="btn btn-main rounded mt-3">Send Message</a>
				</form>
			</div>
		</div>
	</div>
</section>
<%@ include file="footer.jsp"%>
</body>
</html>