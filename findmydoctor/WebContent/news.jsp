<!DOCTYPE html>
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
					<!-- <li><a href="about.jsp"> <span data-hover="About">About</span></a></li> -->
					<li><a href="services.jsp"> <span data-hover="SearchBy">Search By</span></a></li>
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
			<form class="navbar-form navbar-right">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
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
			<h3 class="ttl">Typography Page</h3>
			<div class="grid_3 grid_4">
				<h3>Headings</h3>
				<div class="bs-example">
					<table class="table">
					<tbody>
						<tr>
						  <td><h1 id="h1.-bootstrap-heading">h1. Bootstrap heading<a class="anchorjs-link" href="#h1.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h1></td>
						  <td class="type-info">Semibold 36px</td>
						</tr>
						<tr>
						  <td><h2 id="h2.-bootstrap-heading">h2. Bootstrap heading<a class="anchorjs-link" href="#h2.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h2></td>
						  <td class="type-info">Semibold 30px</td>
						</tr>
						<tr>
						  <td><h3 class="btsp" id="h3.-bootstrap-heading">h3. Bootstrap heading<a class="anchorjs-link" href="#h3.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h3></td>
						  <td class="type-info">Semibold 24px</td>
						</tr>
						<tr>
						  <td><h4 id="h4.-bootstrap-heading">h4. Bootstrap heading<a class="anchorjs-link" href="#h4.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h4></td>
						  <td class="type-info">Semibold 18px</td>
						</tr>
						<tr>
						  <td><h5 id="h5.-bootstrap-heading">h5. Bootstrap heading<a class="anchorjs-link" href="#h5.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h5></td>
						  <td class="type-info">Semibold 14px</td>
						</tr>
						<tr>
						  <td><h6>h6. Bootstrap heading</h6></td>
						  <td class="type-info">Semibold 12px</td>
						</tr>
					</tbody>
					</table>
				</div>
			</div>
			
			
					
			<div class="grid_3 grid_5" style="border-radius: 25px;">
				<h3>Buttons</h3>
				<h1 class="t-button">
					<a href="#"><span class="label label-default">Default</span></a>
					<a href="#"><span class="label label-primary">Primary</span></a>
					<a href="#"><span class="label label-success">Success</span></a>
					<a href="#"><span class="label label-info">Info</span></a>
					<a href="#"><span class="label label-warning">Warning</span></a>
					<a href="#"><span class="label label-danger">Danger</span></a>
				</h1>

			</div>	
			
					
			<div class="grid_3 grid_5">
				<h3>Progress Bars</h3>
				<div class="tab-content">
					<div class="tab-pane active" id="domprogress">
						<div class="progress">    
					      <div class="progress-bar progress-bar-primary" style="width: 20%"></div>
						</div>
						<p>Info with <code>progress-bar-info</code> class.</p>
						<div class="progress">    
							<div class="progress-bar progress-bar-info" style="width: 60%"></div>
						</div>
						<p>Success with <code>progress-bar-success</code> class.</p>
						<div class="progress">
							<div class="progress-bar progress-bar-success" style="width: 30%"></div>
						</div>
						<p>Warning with <code>progress-bar-warning</code> class.</p>
						<div class="progress">
							<div class="progress-bar progress-bar-warning" style="width: 70%"></div>
						</div>
						<p>Danger with <code>progress-bar-danger</code> class.</p>
						<div class="progress">
							<div class="progress-bar progress-bar-danger" style="width: 50%"></div>
						</div>
						<p>Inverse with <code>progress-bar-inverse</code> class.</p>
						<div class="progress">
							<div class="progress-bar progress-bar-inverse" style="width: 40%"></div>
						</div>
						<p>Inverse with <code>progress-bar-inverse</code> class.</p>
						<div class="progress">
							<div class="progress-bar progress-bar-success" style="width: 35%"><span class="sr-only">35% Complete (success)</span></div>
							<div class="progress-bar progress-bar-warning" style="width: 20%"><span class="sr-only">20% Complete (warning)</span></div>
							<div class="progress-bar progress-bar-danger" style="width: 10%"><span class="sr-only">10% Complete (danger)</span></div>
						</div>
					</div>
				</div>
			</div>	   
			<div class="grid_3 grid_5">
				<h3>Pagination</h3>
				<div class="col-md-6">
					<nav>
						<ul class="pagination pagination-lg">
							<li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
						</ul>
					</nav>
					<nav>
						<ul class="pagination">
							<li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
						</ul>
					</nav>
					<nav>
						<ul class="pagination pagination-sm">
							<li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
						</ul>
					</nav>				 
				</div>
				<div class="col-md-6">
					<ul class="pagination pagination-lg">
						<li class="disabled"><a href="#"><span aria-hidden="true">«</span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
					</ul>
					<nav>
						<ul class="pagination">
							<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
							<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
						</ul>
					</nav>
					<ul class="pagination pagination-sm">
						<li class="disabled"><a href="#"><span aria-hidden="true">«</span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="grid_3 grid_5">
				<h3>Breadcrumbs</h3>
				<ol class="breadcrumb">
					<li class="active">Home</li>
				</ol>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Library</li>
				</ol>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Library</a></li>
					<li class="active">Data</li>
				</ol>
			</div>
			<div class="grid_3 grid_5">
				<h3>Badges</h3>
				<div class="col-md-6">
					<p>Add modifier classes to change the appearance of a badge.</p>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Classes</th>
								<th>Badges</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>No modifiers</td>
								<td><span class="badge">42</span></td>
							</tr>
							<tr>
								<td><code>.badge-primary</code></td>
								<td><span class="badge badge-primary">1</span></td>
							</tr>
							<tr>
								<td><code>.badge-success</code></td>
								<td><span class="badge badge-success">22</span></td>
							</tr>
							<tr>
								<td><code>.badge-info</code></td>
								<td><span class="badge badge-info">30</span></td>
							</tr>
							<tr>
								<td><code>.badge-warning</code></td>
								<td><span class="badge badge-warning">412</span></td>
							</tr>
							<tr>
								<td><code>.badge-danger</code></td>
								<td><span class="badge badge-danger">999</span></td>
							</tr>
						</tbody>
					</table>                    
				</div>
				<div class="col-md-6">
				  <p>Easily highlight new or unread items with the <code>.badge</code> class</p>
					<div class="list-group list-group-alternate"> 
						<a href="#" class="list-group-item"><span class="badge">201</span> <i class="ti ti-email"></i> Inbox </a> 
						<a href="#" class="list-group-item"><span class="badge badge-primary">5021</span> <i class="ti ti-eye"></i> Profile visits </a> 
						<a href="#" class="list-group-item"><span class="badge">14</span> <i class="ti ti-headphone-alt"></i> Call </a> 
						<a href="#" class="list-group-item"><span class="badge">20</span> <i class="ti ti-comments"></i> Messages </a> 
						<a href="#" class="list-group-item"><span class="badge badge-warning">14</span> <i class="ti ti-bookmark"></i> Bookmarks </a> 
						<a href="#" class="list-group-item"><span class="badge badge-danger">30</span> <i class="ti ti-bell"></i> Notifications </a> 
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			
			
			<div class="grid_3 grid_5">
				<h3>Tabs</h3>
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Home</a></li>
						<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Profile</a></li>
						<li role="presentation" class="dropdown">
							<a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">Dropdown <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
								<li><a href="#dropdown1" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">@fat</a></li>
								<li><a href="#dropdown2" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">@mdo</a></li>
							</ul>
						</li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
							<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
							<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="dropdown1" aria-labelledby="dropdown1-tab">
							<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="dropdown2" aria-labelledby="dropdown2-tab">
							<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="page-header">
				<h1>Tables</h1>
			</div>
			<h3>Default styles</h3>
			<p>For basic stylinglight padding and only horizontal add the base class <code>.table</code> to any <code>&lt;table&gt;</code>.</p>
			<div class="bs-docs-example">
				<table class="table">
					<thead>
						<tr>
						  <th>#</th>
						  <th>First Name</th>
						  <th>Last Name</th>
						  <th>Username</th>
						</tr>
					</thead>
					<tbody>
						<tr>
						  <td>1</td>
						  <td>Mark</td>
						  <td>Otto</td>
						  <td>@mdo</td>
						</tr>
						<tr>
						  <td>2</td>
						  <td>Jacob</td>
						  <td>Thornton</td>
						  <td>@fat</td>
						</tr>
						<tr>
						  <td>3</td>
						  <td>Larry</td>
						  <td>the Bird</td>
						  <td>@twitter</td>
						</tr>
					</tbody>
				</table>
			</div>
			<hr class="bs-docs-separator">
			<p>Add any of the following classes to the <code>.table</code> base class.</p>
			<p>Adds zebra-striping to any table row within the <code>&lt;tbody&gt;</code> via the <code>:nth-child</code> CSS selector (not available in IE7-8).</p>
			<div class="bs-docs-example">
				<table class="table table-striped">
					<thead>
						<tr>
						  <th>#</th>
						  <th>First Name</th>
						  <th>Last Name</th>
						  <th>Username</th>
						</tr>
					</thead>
					<tbody>
						<tr>
						  <td>1</td>
						  <td>Mark</td>
						  <td>Otto</td>
						  <td>@mdo</td>
						</tr>
						<tr>
						  <td>2</td>
						  <td>Jacob</td>
						  <td>Thornton</td>
						  <td>@fat</td>
						</tr>
						<tr>
						  <td>3</td>
						  <td>Larry</td>
						  <td>the Bird</td>
						  <td>@twitter</td>
						</tr>
					</tbody>
				</table>
			</div>
			<p>Add borders and rounded corners to the table.</p>
			<div class="bs-docs-example">
				<table class="table table-bordered">
				  <thead>
					<tr>
					  <th>#</th>
					  <th>First Name</th>
					  <th>Last Name</th>
					  <th>Username</th>
					</tr>
				  </thead>
				  <tbody>
					<tr>
					  <td rowspan="2">1</td>
					  <td>Mark</td>
					  <td>Otto</td>
					  <td>@mdo</td>
					</tr>
					<tr>
					  <td>Mark</td>
					  <td>Otto</td>
					  <td>@getbootstrap</td>
					</tr>
					<tr>
					  <td>2</td>
					  <td>Jacob</td>
					  <td>Thornton</td>
					  <td>@fat</td>
					</tr>
					<tr>
					  <td>3</td>
					  <td colspan="2">Larry the Bird</td>
					  <td>@twitter</td>
					</tr>
				  </tbody>
				</table>
			</div>
			<p>Enable a hover state on table rows within a <code>&lt;tbody&gt;</code>.</p>
			<div class="bs-docs-example">
				<table class="table table-hover">
				  <thead>
					<tr>
					  <th>#</th>
					  <th>First Name</th>
					  <th>Last Name</th>
					  <th>Username</th>
					</tr>
				  </thead>
				  <tbody>
					<tr>
					  <td>1</td>
					  <td>Mark</td>
					  <td>Otto</td>
					  <td>@mdo</td>
					</tr>
					<tr>
					  <td>2</td>
					  <td>Jacob</td>
					  <td>Thornton</td>
					  <td>@fat</td>
					</tr>
					<tr>
					  <td>3</td>
					  <td colspan="2">Larry the Bird</td>
					  <td>@twitter</td>
					</tr>
				  </tbody>
				</table>
			</div>
		</div>
	</div>
	<!--//news-->
	
	
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
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"> </script>
</body>
</html>