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
<title>Games Zone A Games Category Flat Bootstrap responsive Website Template | News :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Games Zone Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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
<div class="events-w3layouts">
	<h2>News</h2>
	<a href="single.html"><div class="col-md-7 events-left-agile-agileits-w3layouts">
		<div class="events-text-w3-agile events-text1">
			<h4>June 20, 2017</h4>
			<p>Phasellus faucibus semper eros, quis mauris </p>
			<ul>
				<li>by Admin</li>
				<li><span class="glyphicon glyphicon-heart" aria-hidden="true"></span> 10</li>
			</ul>
		</div>
	</div></a>
	<div class="col-md-5 events-right-agile">
		<a href="single.html"><div class="events-right-top">
			<div class="events-text-w3-agile events-text2">
				<h4>July 20, 2017</h4>
				<p>Aenean imperdiet volutpat tortor </p>
				<ul>
					<li>by Admin</li>
					<li><span class="glyphicon glyphicon-heart" aria-hidden="true"></span> 20</li>
				</ul>
			</div>
		</div></a>
		<a href="single.html"><div class="events-right-bottom">
			<div class="events-text-w3-agile events-text2">
				<h4>Aug 20, 2017</h4>
				<p>Fusce aliquam purus  consectetur</p>
				<ul>
					<li>by Admin</li>
					<li><span class="glyphicon glyphicon-heart" aria-hidden="true"></span> 15</li>
				</ul>
			</div>
		</div></a>
		<div class="clearfix"></div>
	</div>
	<div class="clearfix"></div>
	<a href="single.html" class="blog-read" >Write</a>
	<a href="single.html" class="blog-read" >Write</a>
	<a href="single.html" class="blog-read" >Write</a>
</div>

<div class="events-section2-agileinfo">
<div class="container">

	<c:forEach items="${newslist}" var="gf_board">
	<div class="blog1-w3ls" style="margin-bottom: 40px">
		<div class="col-md-4 blog-image-w3l">
			<a href="single.html"><img src="${gf_board.image1}" alt=" " style="width: 350px; height: 350px"/></a>
		</div>
		<div class="col-md-8 blog-text-w3ls">
			<a onclick="location.href='/front/news?content_idx=<c:out value="${gf_board.content_idx}"/>'"><h4>${gf_board.title}</h4></a>
			<div class="item_info">
					<ul>
						<li><a href="#"><i class="glyphicon glyphicon-user"></i>${gf_board.nickname}</a></li>
						<li><i class="glyphicon glyphicon-calendar"></i>${gf_board.regdate}</li>
						<!-- 14.May.2017 -->
						<li><a href="#"><i class="glyphicon glyphicon-comment"></i>Comments</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-heart"></i>${gf_board.board_like} Likes</a></li>
					</ul>
			 </div>
			 <p>${gf_board.content}</p>
			 <a onclick="location.href='/front/news?content_idx=<c:out value="${gf_board.content_idx}"/>'" class="blog-read" >Read More</a>
			 
		</div>
		<div class="clearfix"></div>
	</div>
	</c:forEach>
	


	<div class="blog1-w3ls">
		<div class="col-md-4 blog-image-w3l">
			<a href="single.html"><img src="../../../resources/images/ng1.jpg" alt=" " /></a>
		</div>
		<div class="col-md-8 blog-text-w3ls">
			<a href="single.html"><h4>Quisque in lectus erat</h4></a>
			<div class="item_info">
					<ul>
						<li><a href="#"><i class="glyphicon glyphicon-user"></i>Admin</a></li>
						<li><i class="glyphicon glyphicon-calendar"></i>14.May.2017</li>
						<li><a href="#"><i class="glyphicon glyphicon-comment"></i>20 Comments</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-heart"></i>300 Likes</a></li>
					</ul>
			 </div>
			 <p>Aliquam suscipit neque massa, eu maximus felis gravida vel. Vestibulum lacinia risus risus, ut iaculis felis fermentum id. Cras at vulputate velit, vitae vestibulum augue. Etiam lorem nunc, mattis ac dignissim sit amet, varius et ex. Phasellus eleifend nibh justo, pulvinar cursus sapien commodo non.</p>
			 <a href="single.html" class="blog-read" >Read More</a>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="blog2-w3ls">
		<div class="col-md-4 blog-image-w3l">
			<a href="single.html"><img src="../../../resources/images/ng2.jpg" alt=" " /></a>
		</div>
		<div class="col-md-8 blog-text-w3ls">
			<a href="single.html"><h4>In finibus vel metus</h4></a>
			<div class="item_info">
					<ul>
						<li><a href="#"><i class="glyphicon glyphicon-user"></i>Admin</a></li>
						<li><i class="glyphicon glyphicon-calendar"></i>17.Aug.2017</li>
						<li><a href="#"><i class="glyphicon glyphicon-comment"></i>20 Comments</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-heart"></i>300 Likes</a></li>
					</ul>
			 </div>
			 <p>Aliquam suscipit neque massa, eu maximus felis gravida vel. Vestibulum lacinia risus risus, ut iaculis felis fermentum id. Cras at vulputate velit, vitae vestibulum augue. Etiam lorem nunc, mattis ac dignissim sit amet, varius et ex. Phasellus eleifend nibh justo, pulvinar cursus sapien commodo non.</p>
			 <a href="single.html" class="blog-read" >Read More</a>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="blog3-w3ls">
		<div class="col-md-4 blog-image-w3l">
			<a href="single.html"><img src="../../../resources/images/ng3.jpg" alt=" " /></a>
		</div>
		<div class="col-md-8 blog-text-w3ls">
			<a href="single.html"><h4>Nam eget ligula eu</h4></a>
			<div class="item_info">
					<ul>
						<li><a href="#"><i class="glyphicon glyphicon-user"></i>Admin</a></li>
						<li><i class="glyphicon glyphicon-calendar"></i>24.Aug.2015</li>
						<li><a href="#"><i class="glyphicon glyphicon-comment"></i>20 Comments</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-heart"></i>300 Likes</a></li>
					</ul>
			 </div>
			 <p>Aliquam suscipit neque massa, eu maximus felis gravida vel. Vestibulum lacinia risus risus, ut iaculis felis fermentum id. Cras at vulputate velit, vitae vestibulum augue. Etiam lorem nunc, mattis ac dignissim sit amet, varius et ex. Phasellus eleifend nibh justo, pulvinar cursus sapien commodo non.</p>
			 <a href="single.html" class="blog-read" >Read More</a>
		</div>
		
		<div class="clearfix"></div>
	</div>
</div>
</div>

<%@include file="../front/footer.jsp"%>
</body>
</html>
