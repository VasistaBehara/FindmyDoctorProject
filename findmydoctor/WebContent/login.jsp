<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Find My Doctor | mail</title>
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


</head>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-logo">
				<a href="index.html"><img src="images/Image1.png" alt="logo"/></a>					
			</div>
			<div class="header-info">
			<!-- 	<p>Appointment Page</p>
				<h4>+1-807-356-5161</h4> -->
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
					<li><a href="services.jsp"> <span data-hover="SearchBy">Home</span></a></li>
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
				<input type="text" placeholder="Search Keywords .. Dentist,Gynecologist" name="keyword" id="countries" style="width:400px;border-radius: 5px;">
					<button type="submit" class="btn btn-default"></button>
				</div>		
			</form>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-bottom-->
	
	
<div style="height:20px"></div>	

<c:forEach items="${list}" var="data">

</c:forEach>
<c:if test="${error ne null }"><tr><td colspan="6" align="center">${error}</td></tr></c:if>

<div   class="container" style="border-radius: 55px;width:900px;height:450px" id="register">
	<div style="height:50px"></div>	
	<div   class="form-login" style="float:left;border-radius:55px;width:450px;height:50px">
				<h3>Appointment Details</h3>	
				
				<%
				String time=request.getParameter("time");
				String doctorname=request.getParameter("doctorname");
				String day=request.getParameter("day");	
				String pic=request.getParameter("pic");
				%>
				
				<div style="height:40px;width:450px">					
				<p><img src="<%=pic %>" alt="Smiley face" width="65" height="65"><br>
				<%=day %>@<%=time %><br>				
				Appointment with <%=doctorname %></p>
				</div>	
				
				<div style="height:20px;width:450px">
				
				</div>
			
				
	</div>

			<div  id="Reg" class="form-login" style="float:right">
					<center>
			
			</center>
			<form align="center" action="mail" onsubmit="Validate()" >
					<h3>Confirm Appointment</h3>
				 <input type="text" class="form-control input-sm chat-input" name="Name" pattern="[A-Za-z].{3,}" title="atleast 3 letters" placeholder="Enter your Full Name" required /><br> 
				 <input type="text" class="form-control input-sm chat-input" name="Age" pattern="[0-9][0-9]" title="enter correct age" placeholder="Enter your Age" required /><br>
					Sex: <input
					type="radio" name="Sex" value="m" checked> Male
					 <input type="radio" name="Sex" value="f"> Female <br>
				<input type="text" class="form-control input-sm chat-input" name="Email" title="something@website.com" placeholder="Enter your Email" required /><br>
				<input type="text" class="form-control input-sm chat-input" name="Phone" title="enter 10 digit phone number" placeholder="Enter your phone number" required /><br>
					<input type="hidden" name="time" value="<%=time %>"/>
					<input type="hidden" name="doctorname" value="<%=doctorname %>"/>
					<input type="hidden" name="day" value="<%=day %>" />
					<input type="submit"  style=" background-color: #448885" class="btn btn-primary btn-md" name="register" value="Confirm Appointment"  />
					 <input class="btn btn-primary btn-md" type="reset" style=" background-color: #448885" value="Reset" />
			</form>
			</div>
			</div>
			
			<style>
			#Reg {
			border-radius: 12px;
			width: 300px;
			margin: 0 auto;	
		}
		
		
	</style>
        
	
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
							<h4><a href="doctorsSpecialization.jsp">Specialities</a></h4>
							<p>Find the best available doctor based on specialities</p>
											
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
							<p>Find the best available hospital near your location</p>				
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
							<p>Find the best available Clinics near your location</p>				
						</div>
					</div>
				</div>
				

				<div class="clearfix"> </div>
			</div>

	
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
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
		
		function myFunctionAvailability() {
		    var x = document.getElementById("register");
		    if (x.style.display === "none") {
		        x.style.display = "block";
		    } else {
		        x.style.display = "none";
		    }
		}
		
		
		
		var options = {
				
				url: "json/countries.json",

				  getValue: "name",

				  list: {	
				    match: {
				      enabled: true
				    }
				  },

				  theme: "square"
				};
						$("#countries").easyAutocomplete(options);
		
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"> </script>
</body>
</html>