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
<title>Games Zone A Games Category Flat Bootstrap responsive Website Template | Contact :: w3layouts</title>
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
<div class="contact-agileinfo">
	<div class="container">
		<h2>Login Page</h2>
		<div class="col-md-4 contact-left-agile">
			
		</div>
		<div class="contact-right-w3" style="display: inline-block;">
			<form action="../login" method="post">
				<input type="text" class="text" name="Name" placeholder="ID" required style="width: 400px;">
				<br/>
				<input type="password" class="text" name="Password" placeholder="Password" required style="width: 400px;">
				<br/>
				<div style="display: inline-block; padding-right: 5%;">
					<input type="submit" class="login_btn" value="Login">
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
			</form>
			<div style="display: inline-block; padding-right: 5%;">
				<input type="button" class="login_btn" value="Search PW">
				<input type="button" class="login_btn" value="Search ID">
				<input type="button" class="login_btn" value="Sign Up">
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>


<%@include file="../front/footer.jsp"%>
</body>
</html>
