<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Games Zone A Games Category Flat Bootstrap responsive Website Template | Index :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Games Zone Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

	<script type="application/x-javascript">
		addEventListener("load", function() {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- css -->
	<link href="../../../resources/front/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="../../../resources/front/css/flexslider.css" type="text/css" media="screen" property="" />
	<link href="../../../resources/front/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- css -->
	<!-- font -->
	<link href='https://fonts.googleapis.com/css?family=Josefin+Sans:400,100,100italic,300,300italic,400italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<!-- //font -->
	<script src="../../../resources/front/js/jquery.min.js"></script>
	<script src="../../../resources/front/js/bootstrap.js"></script>

</head>

<style>
	.banner {

	}

</style>
<body>
	<!-- Header -->
	<div class="header">
		<!-- Navbar -->
		<nav class="navbar navbar-default">
			<div class="container">

				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only"> Toggle navigation</span>
						<span class="icon-bar"> </span>
						<span class="icon-bar"> </span>
						<span class="icon-bar"> </span>
					</button>
					<a href="/">
						<h1>Games <img src="../../../resources/images/c1.png" alt=" " /> Zone</h1>
					</a>
				</div>

				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="hover-effect"><a href="/">Home</a></li>
						<li class="hover-effect"><a href="/front/about">About</a></li>
						<li class="hover-effect"><a href="/front/gamelist">Games</a></li>
						<li class="hover-effect"><a href="/front/newslist">News</a></li>
						<li class="hover-effect"><a href="/front/login">Login</a></li>
					</ul>
				</div>

			</div>
		</nav>
		<!-- //Navbar -->

		<!-- Slider -->
		<div class="slider">
			<ul class="rslides" id="slider">
				<li>
					<img class="banner" src="../../../resources/images/banner4.jpg" alt="" />
				</li>
				<li>
					<img class="banner" src="../../../resources/images/banner3.jpg" alt="" />
				</li>
				<li>
					<img class="banner" src="../../../resources/images/banner2.jpg" alt="" />
				</li>
				<li>
					<img class="banner" src="../../../resources/images/banner1.jpg" alt="" />
				</li>
			</ul>
		</div>
		<!-- //Slider -->

	</div>
	<!-- Banner-Slider-JavaScript -->
	<script src="../../../resources/front/js/responsiveslides.min.js"></script>
	<script>
		$(function() {
			$("#slider").responsiveSlides({
				auto: true,
				nav: true,
				speed: 800,
				namespace: "callbacks",
				pager: true,
			});
		});
	</script>
	<!-- //Banner-Slider-JavaScript -->
	<!-- //Header -->

	<!-- trend -->
	<div class="trend-w3layouts">
		<div class="container">
			<h2>Trending Games</h2>
			<ul id="flexiselDemo1">
				<li>
					<div class="trend-grid">
						<h4>Racing Games</h4>
						<img src="../../../resources/images/tg1.jpg" alt=" " class="img-responsive" />
					</div>
				</li>
				<li>
					<div class="trend-grid">
						<h4>3D Games</h4>
						<img src="../../../resources/images/tg2.jpg" alt=" " class="img-responsive" />
					</div>
				</li>
				<li>
					<div class="trend-grid">
						<h4>Action Games</h4>
						<img src="../../../resources/images/tg3.jpg" alt=" " class="img-responsive" />
					</div>
				</li>
				<li>
					<div class="trend-grid">
						<h4>Toy Games</h4>
						<img src="../../../resources/images/tg4.jpg" alt=" " class="img-responsive" />
					</div>
				</li>
			</ul>
			<script type="text/javascript">
				$(window).load(function() {
					$("#flexiselDemo1").flexisel({
						visibleItems: 4,
						animationSpeed: 1000,
						autoPlay: true,
						autoPlaySpeed: 3000,
						pauseOnHover: true,
						enableResponsiveBreakpoints: true,
						responsiveBreakpoints: {
							portrait: {
								changePoint: 480,
								visibleItems: 2
							},
							landscape: {
								changePoint: 640,
								visibleItems: 3
							},
							tablet: {
								changePoint: 768,
								visibleItems: 4
							}
						}
					});

				});
			</script>
			<script type="text/javascript" src="../../../resources/front/js/jquery.flexisel.js"></script>
		</div>
	</div>
	<!-- //trend -->


	<!-- services-->
	<div class="services-agileits-w3layouts">
		<div class="container">
			<h3>Services</h3>
			<div class="col-md-3 service-grid-agileits service-grid-agileits-top">
				<span class="glyphicon glyphicon-sort-by-attributes" aria-hidden="true"></span>
				<h4>Quis tortor</h4>
				<p>Curabitur suscipit porttitor aliquam. Etiam id placerat purus. Integer sodales elit eget arcu placerat.</p>
				<a href="/front/single">Read More</a>
			</div>
			<div class="col-md-3 service-grid-agileits">
				<span class="glyphicon glyphicon-random" aria-hidden="true"></span>
				<h4>Eget arcu</h4>
				<p>Curabitur suscipit porttitor aliquam. Etiam id placerat purus. Integer sodales elit eget arcu placerat.</p>
				<a href="/front/single">Read More</a>
			</div>
			<div class="col-md-3 service-grid-agileits service-grid-agileits-bottom">
				<span class="glyphicon glyphicon-yen" aria-hidden="true"></span>
				<h4>Risus porta</h4>
				<p>Curabitur suscipit porttitor aliquam. Etiam id placerat purus. Integer sodales elit eget arcu placerat.</p>
				<a href="/front/single">Read More</a>
			</div>
			<div class="col-md-3 service-grid-agileits service-grid-agileits-bottom">
				<span class="glyphicon glyphicon-object-align-right" aria-hidden="true"></span>
				<h4>Proin sapien</h4>
				<p>Curabitur suscipit porttitor aliquam. Etiam id placerat purus. Integer sodales elit eget arcu placerat.</p>
				<a href="/front/single">Read More</a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //services-->

	<!-- new games -->
	<div class="new-w3-agile">
		<div class="container">
			<h3>New Games</h3>
			<div class="col-md-3 new-grid-w3l view view-eighth">
				<img src="../../../resources/images/ng1.jpg" alt=" " />
				<div class="mask">
					<a href="/front/singlel">
						<h4>Click here</h4>
					</a>
					<p>To learn more about this</p>
				</div>
			</div>
			<div class="col-md-3 new-grid-w3l view view-eighth">
				<img src="../../../resources/images/ng2.jpg" alt=" " />
				<div class="mask">
					<a href="/front/single">
						<h4>Click here</h4>
					</a>
					<p>To learn more about this</p>
				</div>
			</div>
			<div class="col-md-3 new-grid-w3l view view-eighth">
				<img src="../../../resources/images/ng3.jpg" alt=" " />
				<div class="mask">
					<a href="/front/single">
						<h4>Click here</h4>
					</a>
					<p>To learn more about this</p>
				</div>
			</div>
			<div class="col-md-3 new-grid-w3l view view-eighth">
				<img src="../../../resources/images/ng4.jpg" alt=" " />
				<div class="mask">
					<a href="/front/single">
						<h4>Click here</h4>
					</a>
					<p>To learn more about this</p>
				</div>
			</div>
			<div class="col-md-3 new-grid-agile view view-eighth">
				<img src="../../../resources/images/ng5.jpg" alt=" " />
				<div class="mask">
					<a href="/front/single">
						<h4>Click here</h4>
					</a>
					<p>To learn more about this</p>
				</div>
			</div>
			<div class="col-md-3 new-grid-agile view view-eighth">
				<img src="../../../resources/images/ng6.jpg" alt=" " />
				<div class="mask">
					<a href="/front/single">
						<h4>Click here</h4>
					</a>
					<p>To learn more about this</p>
				</div>
			</div>
			<div class="col-md-3 new-grid-agile view view-eighth">
				<img src="../../../resources/images/ng7.jpg" alt=" " />
				<div class="mask">
					<a href="/front/single">
						<h4>Click here</h4>
					</a>
					<p>To learn more about this</p>
				</div>
			</div>
			<div class="col-md-3 new-grid-agile view view-eighth">
				<img src="../../../resources/images/ng8.jpg" alt=" " />
				<div class="mask">
					<a href="/front/single">
						<h4>Click here</h4>
					</a>
					<p>To learn more about this</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //new games-->
<div class="services-bottom-w3-agileits">
		<div class="container">
			<div class="wthree_info">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="wthree_info_grid">
									<h3>Duis aute dolor reprehenderit</h3>
									<p>Excepteur sint occaecat cupidatat non proident, sunt officia.</p>
									<a href="/front/single" class="learn">Learn More</a>
								</div>
							</li>
							<li>
								<div class="wthree_info_grid">
									<h3>Aliquip commodo consequat</h3>
									<p>Curabitur lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
									<a href="/front/single" class="learn">Learn More</a>
								</div>
							</li>
							<li>
								<div class="wthree_info_grid">

									<h3>Quis autem vel eum iure ea</h3>
									<p>Phasellus ornare consectetur erat, eu vehicula orci finibus at.</p>
									<img style="text-align:center" src="../../../resources/images/about.jpg" />
									<a href="/front/single" class="learn">Learn More</a>

								</div>
							</li>
						</ul>
					</div>
				</section>
				<!-- flexSlider -->

				<script defer src="../../../resources/front/js/jquery.flexslider.js"></script>
				<script type="text/javascript">
					$(window).load(function() {
						$('.flexslider').flexslider({
							animation: "slide",
							start: function(slider) {
								$('body').removeClass('loading');
							}
						});
					});
				</script>
				<!-- //flexSlider -->
			</div>
		</div>
	</div>
</body>
<%@include file="../front/footer.jsp"%>

</html>