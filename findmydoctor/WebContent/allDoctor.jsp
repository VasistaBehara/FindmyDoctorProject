<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Find My Doctor | all doctors</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen">				
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
<!-- JS file -->
<script src="js/jquery.easy-autocomplete.min.js"></script> 

<!-- CSS file -->
<link rel="stylesheet" href="css/easy-autocomplete.min.css">
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
<style type="text/css">
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-logo">
				<a href="index.html"><img src="images/Image1.png" alt="logo"/></a>					
			</div>
			<div class="header-info">
		<!-- 		<p>Information Service:</p>
				<h4>+1 807-888-8888</h4> -->
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
				<input type="text" placeholder="Search using Keywords .. Dentist,Gynecologist" name="keyword" id="countries" style="width:400px;border-radius: 5px;">
					<button type="submit" class="btn btn-default"></button>
				</div>		
			</form>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-bottom-->
	
	<div class="services" id="services">
	<div class="grid_3 grid_5" style="border: 0px solid black;height:3000px">
		<div class="container">
			<div class="news">
		<div class="container">
		<c:forEach items="${list}" var="data">	
			
			</c:forEach>	
		
				
	
			<div class="page-header">				
			</div>
			<h3>List of all Doctors</h3>	
			
			
				
			<div class="container">
			<div class="bs-docs-example">
			
				<table class="table table-hover">
				 <thead>
								<tr>
								
									
									
									<th >
										Name
									</th>
									<th >
									Location
										
									</th>
									<th>
									Department	
									</th>
									<th >
										Age
									</th>
									<th >
										Gender
									</th>
									<th >
										
									</th>
									
									
									
								</tr>

							</thead>
				 	<tbody>
		<c:forEach items="${list}" var="data">
    <tr>
		   	 <td>${data.profile.first_name}</td>
		
		     <td>
		     <c:forEach items="${data.practices}" var="dat">
		     	${dat.location_slug}
		     	</c:forEach>
			</td>
    			 
    			  <td>
		     <c:forEach items="${data.lSpecialties}" var="dat">
		     	${dat.uid}
		     	</c:forEach>
			</td>
    			 <td>    			 
    			 <img src="${data.profile.image}" alt="Smiley face" width="65" height="65">
    			 </td>
    			  <td>    			 
    			 ${data.profile.gender}
    			 </td>
    		
    			 
		    
	    	
     
		</tr>
		
		<div   class="container" style="display:none;border: 1px solid black;border-radius: 55px;height:150px" id="Availability">
		
		
		
		</div>
		</c:forEach>
		<c:if test="${error ne null }"><tr><td colspan="6" align="center">${error}</td></tr></c:if>									
		</tbody>
				</table>
			</div>
		  </div>	
		</div>
	</div>
    			 </div>
		</div>
		<div class="clearfix"> </div>
	</div>
			
			
	
	
	<!--services-->
	<div class="services" id="se">
		<div class="container">
			<h3>Search By</h3>
			<div class="row services-info">			
				<div class="col-sm-6 col-md-4 services-grids">
					<div class="thumbnail">
						<div class="moments-bottom">
							<a href="doctorsSpecialization.jsp">
								<img src="images/img9.jpg" class="img-responsive zoom-img " alt="">				
							</a>
						</div>
						<div class="caption services-caption">
							<h4><a href="doctorsSpecialization.jsp">Specialities</a></h4>
							<p>Find the best available doctor near your location</p>				
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 services-grids">
					<div class="thumbnail">
						<div class="moments-bottom">
							<a href="hospitalSpecialization.jsp">
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
			
		
	
			
			
			
			<!--light-box-js -->
				<script src="js/jquery.chocolat.js"></script>
				<!--light-box-files -->
				<script type="text/javascript">
				$(function() {
					$('.moments-bottom a').Chocolat();
				});
				</script> 
			<!--//end-gallery js-->
		</div>
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
			<p>Copyright © 2018 Find my Doctor. All rights reserved </p>
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
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"> </script>
    
    <script>
function myFunction() {
    var x = document.getElementById("services");
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
</body>
</html>