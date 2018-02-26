<!DOCTYPE html>
<html>
<head>
<title>Find my Doctor</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" href="style/easy-autocomplete.min.css"> 

<!-- Additional CSS Themes file - not required-->
<link rel="stylesheet" href="style/easy-autocomplete.themes.min.css"> 
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="find my doc" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<!-- js -->
 
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="js/jquery.easy-autocomplete.min.js"></script> 
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
		var options = {
				url: "json/countries.json",

				getValue: "name",

				list: {
					match: {
						enabled: true
					}
				}
			};

			$("#provider-json").easyAutocomplete(options);
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
				<p>Information Service:</p>
				<h4>+1 807-888-8888</h4>
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
					<li><a href="index.jsp" class="active"><span data-hover="Home">Home</span></a></li>
					<li><a href="about.jsp"> <span data-hover="About">About</span></a></li>
					<li><a href="services.jsp"> <span data-hover="Searchby">Search By</span></a></li>
					<!-- <li><a href="news.jsp"> <span data-hover="News">News</span></a></li> -->
					<li><a href="contact.jsp"> <span data-hover="Contact">Contact</span></a></li>
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
				<input type="text" placeholder="Search using Keywords .. Dentist,Gynecologist,Pediatrician" name="keyword"  style="width:400px;border-radius: 5px;">
					<button type="submit" class="btn btn-default"></button>
				</div>		
			</form>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-bottom-->
	<!--banner-->
	<div class="banner" style="height:300px">
		<div class="container ">
			<!-- banner-text Slider starts Here -->
			<script src="js/responsiveslides.min.js"></script>
			 <script>
				// You can also use "$(window).load(function() {"
					$(function () {
					// Slideshow 4
						$("#slider3").responsiveSlides({
						auto: true,
						pager:true,
						nav:false,
						speed: 500,
						namespace: "callbacks",
						before: function () {
						$('.events').append("<li>before event fired.</li>");
						},
						after: function () {
							$('.events').append("<li>after event fired.</li>");
						}
					});	
				});
			</script>
			<!--//End-slider-script -->
			<div  id="top" class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="banner-text">		
							<h1>We are here to care for you</h1>
							<p>A teacher must believe in the value and interest of his subject as a doctor believes in health.</p>
						</div>
					</li>
					<li>
						<div class="banner-text">		
							<h1>We give the best to you</h1>
							<p>I am a doctor - it's a profession that may be considered a special mission, a devotion. It calls for involvement, respect and willingness to help all other people.</p>
						</div>
					</li>
					<li>
						<div class="banner-text">		
							<h1>We work hard for the benefit of others </h1>
							<p>A good doctor treats the disease. The best doctor treats the patient of the disease</p>
						</div>
					</li>
				</ul>
			</div>
		</div>	
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
	
	
	
	
	<!--work-->
	<div class="work">		
		<div class="container">	
			<div class="work-title">
				<!-- <h3>More projects</h3>
				<p>Lorem Ipsum was popularised in the with the release of Letraset sheets contai ningthe</p> -->
			</div>
			<div class="col-md-4 work-grids">
				<ul>
					<li><img src="images/icon2.png" alt=""></li>
					<li>
						<h4>Quas molestias excep</h4>
						<p>praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
					</li>
				</ul>
			</div>	
			<div class="col-md-4 work-grids">
				<ul>
					<li><img src="images/icon3.png" alt=""></li>
					<li>
						<h4>occaecati cupiusint</h4>
						<p>praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
					</li>
				</ul>
			</div>
			<div class="col-md-4 work-grids">
				<ul>
					<li><img src="images/icon4.png" alt=""></li>
					<li>
						<h4>Excepturi sint occa</h4>
						<p>praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//work-->
	
	
	
	<div class="like">		
		<div class="container">
			<div class="work-title">
				<h3>Stay connected with us</h3>
				<p class="cnnct">Contact us through these social media links</p>
			</div>
			<div class="col-md-3 like-grids">
				<a href="#">
					<img src="images/icon1.png" alt=""/>
				</a>
				<p>Facebook</p>
			</div>
			<div class="col-md-3 like-grids">
				<a href="#">
					<img src="images/icon5.png" alt=""/>
				</a>
				<p>Twitter</p>
			</div>
			<div class="col-md-3 like-grids">
				<a href="#">
					<img src="images/icon6.png" alt=""/>
				</a>
				<p>Pinterest</p>
			</div>
			<div class="col-md-3 like-grids">
				<a href="#">
					<img src="images/icon7.png" alt=""/>
				</a>
				<p>Googleplus</p>
			</div>
			<div class="clearfix"> </div>
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
	
	
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">				
				<div class="col-md-4 recent-posts">
					<h4>Recent posts</h4>
					<div class="recent-posts-text">
						<h5>MARCH 30, 2018</h5>
						<p>New doctors are added</p>
					</div>
					<div class="recent-posts-text">
						<h5>MARCH 15, 2018</h5>
						<p>Added support for getting appointment</p>
					</div>
					<div class="recent-posts-text">
						<h5>MARCH 3, 2018</h5>
						<p>added doctor prices</p>
					</div>
				</div>
				<div class="col-md-4 recent-posts">
					<h4>Twitter feeds</h4>
					<div class="recent-posts-text">
						<h5>about 2 days ago<span>@kristina</span></h5>
						<p>Good work</p>
					</div>
					<div class="recent-posts-text">
						<h5>about 4 days ago <span>@george</span></h5>
						<p>Thanks! , this is useful</p>
					</div>
					<div class="recent-posts-text">
						<h5>about 1 week ago <span>@lilly</span> </h5>
						<p>Need more work....</p>
					</div>
				</div>
				<div class="col-md-4 recent-posts">
					<h4>Our address</h4>
					<p class="adrs">For more details, questions these can be used to contact us </p>
					<ul>
						<li><span></span>oliver road, Lakehead university</li>
						<li><span class="ph-no"></span>+1 (807) 888 8888</li>
						<li><span class="mail"></span><a href="mailto:example@mail.com">example@lakeheadu.ca</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>	
	</div>	
	<!--//footer-->
	
	
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