<!DOCTYPE html>
<html>
<head>
<title>Find My Doctor | Services</title>
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
					<li><a href="services.jsp"> <span data-hover="SearchBy">Search By</span></a></li>
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
				<input type="text" placeholder="Search using Keywords .. Dentist,Gynecologist,Pediatrician" name="keyword" id="keyword" style="width:400px;border-radius: 5px;">
					<button type="submit" class="btn btn-default"></button>
				</div>		
			</form>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-bottom-->
	
	
	
	<!--services-->
	<div class="services">
		<div class="container" >
			<h3>Search by</h3>
			<div class="row services-info" >			
				<div class="col-xs-6 col-md-4 services-grids" >
					<div class="thumbnail" >
						<div class="moments-bottom">
							<a href="doctorsSpecialization.jsp">
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
							<a href="hospitalSpecialization.jsp">
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
			<p>Copyright © 2018 Find My Doctor. All rights reserved </p>
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
</body>
</html>