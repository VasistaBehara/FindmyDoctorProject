<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Find My Doctor | News</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Doctor Plus Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script> 
<!-- //js -->	
<!-- start-smoth-scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!--//end-smoth-scrolling-->


<script type="text/javascript">
request.getSession().setAttribute("data", data);
</script>

</head>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-logo">
				<a href="index.html"><img src="images/Image1.png" alt="logo"/></a>					
			</div>
			<div class="header-info">
				<p>Information Service:</p>
				<h4>+1-807-356-5161</h4>
			</div>			
			<div class="clearfix"> </div>
		</div>	
	</div>
	<!--//header-->
	<!--header-bottom-->
	<div class="header-bottom">
		<div class="container">
			<!--top-nav-->
			<div class="top-nav cl-effect-5">
				<span class="menu-icon"><img src="images/menu-icon.png" alt=""/></span>		
				<ul class="nav1">
					<li><a href="index.jsp"><span data-hover="Home">Home</span></a></li>
					<!-- <li><a href="about.jsp"> <span data-hover="About">About</span></a></li> -->
					<li><a href="services.jsp"> <span data-hover="SearchBy">Search By</span></a></li>
					<!-- <li><a href="news.jsp" class="active"> <span data-hover="News">News</span></a></li> -->
					<!-- <li><a href="contact.jsp"> <span data-hover="Contact">Contact</span></a></li> -->
				</ul>
				<!-- script-for-menu -->
				<script>
				   $( "span.menu-icon" ).click(function() {
					 $( "ul.nav1" ).slideToggle( 300, function() {
					 // Animation complete.
					  });
					 });
				</script>
				<!-- /script-for-menu -->
			</div>
			
			<!--//top-nav-->
			<form class="navbar-form navbar-right" action="search">
				<div class="form-group">
				<!-- <select style="width:150px;height:27px;border-radius: 5px;">
							<option value="volvo">Choose Location</option>
						  <option value="volvo">Arthur Street</option>
						  <option value="saab">Edward Street</option>
						  <option value="opel">Cumberland</option>
						  <option value="audi">Dawson</option>
				</select> -->
				<input type="text" placeholder="Search using Keywords .. Dentist,Gynecologist," name="keyword" id="keyword" style="width:400px;border-radius: 5px;">
					<button type="submit" class="btn btn-default"></button>
				</div>		
			</form>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-bottom-->
	
	
	
	<!--news-->
	<div class="news">
		<div class="container">
	
				
	
			<div class="page-header">				
			</div>
			<h3>Doctors</h3>	
			
			
				
			<div class="container">
			<div class="bs-docs-example">
			
			
		<c:forEach items="${list}" var="data">
		
		  <div class="grid_3 grid_5">
				<h3> ${data.docName}</h3>
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#Today" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Today</a></li>
						<li role="presentation"><a href="#Tomorrow" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Tomorrow</a></li>
						<li role="presentation"><a href="#DA" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Day After</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="Today" aria-labelledby="Today">
							<table  class="table table-hover">
							<thead>
							<tr>
							<th>time</th>
							<th>Availability</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>10AM-11AM</td>
								<td><a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day1.t1} </a> <td>
							</tr>
							<tr>
								<td>11AM-12pM</td>
								<td><a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day1.t2} </a> <td>
							</tr>
							<tr>
								<td>12AM-1PM</td>
								<td><a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day1.t3} </a> <td>
							</tr>
							<tr>
								<td>1PM-2PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day1.t4} </a><td>
							</tr>
							<tr>
								<td>2PM-3PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day1.t5} </a><td>
							</tr>
							<tr>
								<td>3PM-4PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day1.t6} </a><td>
							</tr>
							<tr>
								<td>4PM-5PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day1.t7} </a><td>
							</tr>
							<tr>
								<td>5PM-6PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day1.t8} </a><td>
							</tr>
							</tbody>
							</table>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="Tomorrow" aria-labelledby="Tomorrow">
							<table  class="table table-hover">
							<thead>
							<tr>
							<th>time</th>
							<th>Availability</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>10AM-11AM</td>
								<td><a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day2.t21} </a> <td>
							</tr>
							<tr>
								<td>11AM-12pM</td>
								<td><a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day2.t22} </a> <td>
							</tr>
							<tr>
								<td>12AM-1PM</td>
								<td><a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day2.t23} </a> <td>
							</tr>
							<tr>
								<td>1PM-2PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day2.t24} </a><td>
							</tr>
							<tr>
								<td>2PM-3PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day2.t25} </a><td>
							</tr>
							<tr>
								<td>3PM-4PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day2.t26} </a><td>
							</tr>
							<tr>
								<td>4PM-5PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day2.t27} </a><td>
							</tr>
							<tr>
								<td>5PM-6PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day2.t28} </a><td>
							</tr>
							</tbody>
							</table>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="DA" aria-labelledby="DA">
							<table  class="table table-hover">
							<thead>
							<tr>
							<th>time</th>
							<th>Availability</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>10AM-11AM</td>
								<td><a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day3.t31} </a> <td>
							</tr>
							<tr>
								<td>11AM-12pM</td>
								<td><a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day3.t32} </a> <td>
							</tr>
							<tr>
								<td>12AM-1PM</td>
								<td><a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day3.t33} </a> <td>
							</tr>
							<tr>
								<td>1PM-2PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day3.t34} </a><td>
							</tr>
							<tr>
								<td>2PM-3PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day3.t35} </a><td>
							</tr>
							<tr>
								<td>3PM-4PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day3.t36} </a><td>
							</tr>
							<tr>
								<td>4PM-5PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day3.t37} </a><td>
							</tr>
							<tr>
								<td>5PM-6PM</td>
								<td> <a href="#Availability" onclick="location.href='login.jsp'" class="arrow scroll">${data.day3.t38} </a><td>
							</tr>
							</tbody>
							</table>
						</div>
						
					</div>
				</div>
			</div>  

		
		</c:forEach>
		<c:if test="${error ne null }"><tr><td colspan="6" align="center">${error}</td></tr></c:if>	
		<c:if test="${message ne null }"><tr><td colspan="6" align="center">${message}</td></tr></c:if>
										
	
			
			</div>
		  </div>	
		</div>
	</div>
	
	
	<!--//news-->	
	
		<div class="banner-bottom">
		<div class="container">
			<h2> Search for the services</h2>
			<a href="#services" class="arrow scroll"> </a>
		</div>
	</div>
	
	<!--services-->
	<div class="services" id="services">
		<div class="container">
			<h3>Services</h3>
			<div class="row services-info">			
				<div class="col-sm-6 col-md-4 services-grids">
					<div class="thumbnail">
						<div class="moments-bottom">
							<a href="images/img9.jpg">
								<img src="images/img9.jpg" class="img-responsive zoom-img " alt="">				
							</a>
						</div>
						<div class="caption services-caption">
							<h4><a href="doctorsSpecialization.jsp">Doctors</a></h4>
											
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 services-grids">
					<div class="thumbnail">
						<div class="moments-bottom">
							<a href="images/hospital.jpg">
								<img src="images/hospital.jpg" class="img-responsive zoom-img " alt="">				
							</a>
						</div>
						<div class="caption services-caption">
							<h4><a href="hospitalSpecialization.jsp">Hospitals</a></h4>
											
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 services-grids">
					<div class="thumbnail">
						<div class="moments-bottom">
							<a href="images/Clinic.jpg">
								<img src="images/Clinic.jpg" class="img-responsive zoom-img " alt="">				
							</a>
						</div>
						<div class="caption services-caption">
							<h4><a href="clinicSpecialization.jsp">Clinics</a></h4>
											
						</div>
					</div>
				</div>
				

				<div class="clearfix"> </div>
			</div>

	<div style="height:30px"></div>
<!--map-->
	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d42359.707447887675!2d-89.28481132638942!3d48.428093737274445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4d5921908097eeb5%3A0x1c222f6404947a1d!2sThunder+Bay%2C+ON+P7B!5e0!3m2!1sen!2sca!4v1519401233843" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
		<div class="container">	
			<div class="map-info">
				<ul>
					<li>Head office</li>
					<li>Arthur Street-2235</li>
					<li>Thunderbay,Canada-P7E5P9</li>
					<li>807 356 6578</li>
				</ul>
			</div>
		</div>
	</div>
	<!--//map-->
	
	
	
	
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright ©  2018 Find My Doctor. All rights reserved </p>
		</div>
	</div>
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
		
		function myFunctionAvailability() {
		    var x = document.getElementById("Availability");
		    if (x.style.display === "none") {
		        x.style.display = "block";
		    } else {
		        x.style.display = "none";
		    }
		}
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"> </script>
</body>
</html>