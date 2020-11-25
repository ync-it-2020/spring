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
	<title>Games Zone A Games Category Flat Bootstrap responsive Website Template | Single :: w3layouts</title>
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
	<link href="../../../resources/front/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!--// css -->
	<!-- font -->
	<link href='https://fonts.googleapis.com/css?family=Josefin+Sans:400,100,100italic,300,300italic,400italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<!-- //font -->
	<script src="../../../resources/front/js/jquery.min.js"></script>
	<script src="../../../resources/front/js/bootstrap.js"></script>
</head>

<body>
	<%@include file="../front/header.jsp"%>
	<!-- breadcrumbs -->
	<div class="agileits_breadcrumbs">
		<div class="container">
			<div class="agileits_breadcrumbs_left">
				<ul>
					<li><a href="/">Home</a><i>|</i></li>
					<li>Single</li>
				</ul>
			</div>
			<div class="agileits_breadcrumbs_right">
				<h3>Single</h3>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //breadcrumbs -->
	
	<!-- single -->
	<div class="blog">
		<div class="container">
			<div class="col-md-7 wthree_blog_left">
				<div class="wthree_blog_left_grid">
					<div class="wthree_blog_left_grid_slider">
						<img src='<c:out value="${news.image1 }"/>' alt=" " style="width: 350px; height: 350px" class="img-responsive" />
					</div>
					<h4><c:out value="${news.title }"/></h4>
					<!-- 
					<h3>facilisis velit vitae gravida imperdiet</h3>
					-->
					<ul>
						<li><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a href="#"><c:out value="${news.nickname }"/></a><i>|</i></li>
						<li><span class="glyphicon glyphicon-heart" aria-hidden="true"></span><a href="#"><c:out value="${news.board_like }"/></a><i>|</i></li>
						<!-- 
						<li><span class="glyphicon glyphicon-tag" aria-hidden="true"></span><a href="#">5</a><i>|</i></li>
						<li><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>Voluptatibus</li>
						 -->
					</ul>
					<p>
					<c:out value="${news.content }"/>
					</p>
				</div>
				<div class="agileits_share">
					<ul>
						<li><a class="linkedin" href="#"></a></li>
						<li><a class="google" href="#"></a></li>
						<li><a class="twitter" href="#"></a></li>
						<li><a class="facebook" href="#"></a></li>
					</ul>
				</div>

				<div class="agileits_reply">
					<h3>Leave a reply</h3>
					<form action="#" method="post">
						<input type="text" name="Name" placeholder="Name" required="">
						<input type="email" name="Email" placeholder="Email" required="">
						<input type="text" name="Subject" placeholder="Subject" required="">
						<textarea name="Message" placeholder="Type your comment..." required=""></textarea>
						<input type="submit" value="Submit">
					</form>
				</div>
			</div>
			<div class="col-md-5 wthree_blog_right">
				<div class="w3ls_search">
					<form action="#" method="post">
						<input type="text" name="Search" placeholder="Search on our blog" required="">
						<input type="submit" value=" ">
					</form>
				</div>
				<div class="w3l_categories">
					<h3>Categories</h3>
					<ul>
						<li><a href="single.html">Vitae gravida elit fringilla nec sociosqu</a></li>
						<li><a href="single.html">Morbi mauris turpis, posuere auctor auctor</a></li>
						<li><a href="single.html">Class aptent taciti sociosqu litora torquent</a></li>
						<li><a href="single.html">Duis venenatis, mi quis malesuada ultricies</a></li>
						<li><a href="single.html">Egestas lectus urna et massa morbi mauris</a></li>
						<li><a href="single.html">Torquent conubia nostra inceptos himenaeos</a></li>
						<li><a href="single.html">Urna et massa morbi mauris turpis, posuere</a></li>
					</ul>
				</div>

				<div class="w3l_archives">
					<h3>Archives</h3>
					<ul>
						<li>2 August 2017</li>
						<li>14 August 2017</li>
						<li>23 August 2017</li>
						<li>8 September 2017</li>
						<li>18 September 2017</li>
					</ul>
				</div>
				<div class="w3agile_flickr_posts">
					<h3>Flickr Posts</h3>
					<div class="w3agile_flickr_post_left">
						<a href="single.html"><img src="../../../resources/images/ng1.jpg" alt=" " class="img-responsive" /></a>
					</div>
					<div class="w3agile_flickr_post_left">
						<a href="single.html"><img src="../../../resources/images/ng2.jpg" alt=" " class="img-responsive" /></a>
					</div>
					<div class="w3agile_flickr_post_left">
						<a href="single.html"><img src="../../../resources/images/ng3.jpg" alt=" " class="img-responsive" /></a>
					</div>
					<div class="w3agile_flickr_post_left">
						<a href="single.html"><img src="../../../resources/images/ng4.jpg" alt=" " class="img-responsive" /></a>
					</div>
					<div class="w3agile_flickr_post_left">
						<a href="single.html"><img src="../../../resources/images/ng5.jpg" alt=" " class="img-responsive" /></a>
					</div>
					<div class="w3agile_flickr_post_left">
						<a href="single.html"><img src="../../../resources/images/ng6.jpg" alt=" " class="img-responsive" /></a>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //single -->

<%@include file="../front/footer.jsp"%>
</body>

</html>
