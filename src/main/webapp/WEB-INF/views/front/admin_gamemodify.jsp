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
		<h2>Game Upload Page</h2>
		<div class="col-md-4 contact-left-agile">
			
		</div>
		<div class="col-md-4 contact-left-agile" style="display: inline-block;">
			<div class="agileits_reply">
					<h3>업로드할 게임명과 ID명을 입력해주세요.</h3>
					<form role="form" action="/front/admin_gameupload" method="post" enctype="multipart/form-data">
						<input type="text" name="gametitle" placeholder="Title" required>
						<input type="text" name="appids" placeholder="ID" required>
						이미지는 1:1 비율을 권장합니다.<br/>
						<input type="file" class="hidden_input" id="InputImage" name="uploadFile" onchange="readURL(this)"
						accept="image/jpeg, image/jpg, image/png" required/>
						
						<img src="../../../resources/images/default_image.png" style="border: 2px dotted black" id="thumbnail"/>
						<button type="submit" class="login_btn">Submit</button>
					</form>
					<div id="image_container" style="width: 350px; height: auto;"></div>
					<script>
					//이미지 미리보기
					function readURL(input) {
				    	if (input.files && input.files[0]) {
				        var reader = new FileReader();
				        reader.readAsDataURL(input.files[0]);

				    
				        reader.onload = function (e) {
				    
				        	var tempImage=new Image();
				        	tempImage.src=reader.result;
				        	console.log(tempImage);
				        	tempImage.onload=function(){
				        		var canvas=document.createElement('canvas');
				        		var canvasContext=canvas.getContext("2d");
				        		
				        		
				            	var img = new Image();
					        	img.src = e.target.result;
					        	
					        	
				        		canvas.width=img.width*0.5;
				        		canvas.height=img.height*0.5;
				        		
				        		canvasContext.drawImage(this,0,0,canvas.width,canvas.height);
				        		
				        		var dataURI=canvas.toDataURL("image/png");
				        		
				        		document.querySelector("#thumbnail").src=dataURI;
				   
				        	}
				        };
				    
				    	}
					}
				    </script>
				    <%=request.getRealPath("/") %>
				</div>
		</div>
		
		<div class="clearfix"></div>
	</div>
</div>


<%@include file="../front/footer.jsp"%>
</body>
</html>
