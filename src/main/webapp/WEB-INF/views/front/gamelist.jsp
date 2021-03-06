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
<title>Games Zone A Games Category Flat Bootstrap responsive Website Template | Games:: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Games Zone Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="../../../resources/front/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../../../resources/front/css/popup-box.css" rel="stylesheet" type="text/css" media="all" />
<link href="../../../resources/front/css/style.css" rel="stylesheet" type="text/css" media="all" />

<!--  -->
<link href='https://fonts.googleapis.com/css?family=Josefin+Sans:400,100,100italic,300,300italic,400italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../../../resources/front/js/responsiveslides.min.js"></script>
<script src="../../../resources/front/js/jquery.min.js"></script>
<script src="../../../resources/front/js/bootstrap.js"></script>
	<script src="../../../resources/front/js/jquery.magnific-popup.js" type="text/javascript"></script>
<script type="text/javascript" src="../../../resources/front/js/modernizr.custom.53451.js"></script>

<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
<script type="text/javascript" src="../../../resources/front/js/blocksit.js"></script>
<script type="text/javascript" src="../../../resources/front/js/blocksit.min.js"></script>
<script type="text/javascript" src="https://raw.githubusercontent.com/rnmp/salvattore/master/dist/salvattore.js"></script>

</head>
<style>
.grid-item img {display: block; min-width:100%; max-width: 100%; border-radius : 20px;}
 
</style>
<body>
<%@include file="../front/header.jsp"%>
	<div class="gallery-w3layouts" id="gallery">
		<a href="/front/admin_gameupload" class="blog-read" >Upload</a>
	</div>
	<!-- 
	<c:forEach items="${gamelist}" var="gf_game">
		<tr>
			<td><c:out value="${gf_game.appids}" /></td>
			<td><a class='move' href='<c:out value="${gf_game.appids}"/>'><c:out value="${gf_game.gametitle}" />
			<b>[<c:out value="" />]</b></a> 
			</td>
			<td><c:out value="" /></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${gf_game.regdate}" /></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${gf_game.regdate}" /></td>
		</tr>
	</c:forEach>
	 -->
	 
	<!-- gallery -->
	<div class="gallery-w3layouts" id="gallery">
		<div class="container">
			<h2>New Games</h2>
			<div class="grid masonry"style="width: 130%">
				<c:forEach items="${gamelist}" var="gf_game">
					<div class="gallery-grid grid-item masonry-item">
						<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" onclick="location.href='/front/gamedetails?appids=<c:out value="${gf_game.appids}"/>'" >
							<img src="${gf_game.thumbnail}" alt=" " class="img-responsive zoom-img"/>
						</a>
					</div>
				</c:forEach>
				
				<div class="clearfix"> </div>
				
			</div>
		</div>
	</div>
	
	
	<!--//gallery -->
	<script>
	var i = setInterval(function() {
		var msnry = new Masonry( '.masonry', {
			itemSelector: '.masonry-item',
			columnWidth: 20
			});
	}, 1);
	setTimeout(function() {
        clearTimeout(i);
    },50);
    
//	for (var i = 0; i < 2; i++) {
//		var msnry = new Masonry( '.masonry', {
//			itemSelector: '.masonry-item',
//			columnWidth: 20
//			});
//		}

	
	
	</script>
	
	
<!-- gallery -->
	<div class="gallery-w3layouts" id="gallery">
		<div class="container">
			<h2>Popular Games</h2>
			<div class="gallery-grids">
				<div class="gallery-grid">
					<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog">
						<img src="../../../resources/images/g1.jpg" alt=" " class="img-responsive zoom-img" />
					</a>
					<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog2">
						<img src="../../../resources/images/g2.jpg" alt=" " class="img-responsive zoom-img" />
					</a>
				</div>
				<div class="gallery-grid">
					<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog3">
						<img src="../../../resources/images/g3.jpg" alt=" " class="img-responsive zoom-img" />
					</a>
					<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog4">
						<img src="../../../resources/images/g5.jpg" alt=" " class="img-responsive zoom-img" />
					</a>
				</div>
				<div class="gallery-grid">
					<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog5">
						<img src="../../../resources/images/g6.jpg" alt=" " class="img-responsive zoom-img" />
					</a>
					<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog6">
						<img src="../../../resources/images/g7.jpg" alt=" " class="img-responsive zoom-img" />
					</a>
				</div>
				<div class="gallery-grid">
					<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog7">
						<img src="../../../resources/images/g4.jpg" alt=" " class="img-responsive zoom-img" />
					</a>
					<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog8">
						<img src="../../../resources/images/g8.jpg" alt=" " class="img-responsive zoom-img" />
					</a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--//gallery -->
<!-- 
 <script>
						$(document).ready(function() {
							$('.popup-with-zoom-anim').magnificPopup({
								type: 'inline',
								fixedContentPos: false,
								fixedBgPos: true,
								overflowY: 'auto',
								closeBtnInside: true,
								preloader: false,
								midClick: true,
								removalDelay: 300,
								mainClass: 'my-mfp-zoom-in'
							});
						});
</script>
 -->
<div class="pop-up">
	<div id="small-dialog" class="mfp-hide book-form">
		<div class="pop-up-content-agileits-w3layouts">
			<div class="col-md-6 w3ls-left">
				<img src="../../../resources/images/g1.jpg" alt=" " class="img-responsive zoom-img" />
			</div>
			<div class="col-md-6 w3ls-right">
				<h4>Game-1</h4>
				<p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec, sagittis massa. </p>
				<p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
				<div class="span span1">
					<p class="left">NAME</p>
					<p class="right">: Sed Perst</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span2">
					<p class="left">DEVELOPER</p>
					<p class="right">: Martina</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span3">
					<p class="left">REQUIRES</p>
					<p class="right">: 2GB Hard Disk Space</p>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="pop-up">
	<div id="small-dialog2" class="mfp-hide book-form">
		<div class="pop-up-content-agileits-w3layouts">
			<div class="col-md-6 w3ls-left">
				<img src="../../../resources/images/g2big.jpg" alt=" " class="img-responsive zoom-img" />
			</div>
			<div class="col-md-6 w3ls-right">
				<h4>Game-2</h4>
				<p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec, sagittis massa. </p>
				<p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
				<div class="span span1">
					<p class="left">NAME</p>
					<p class="right">: Vivamus</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span2">
					<p class="left">DEVELOPER</p>
					<p class="right">: Quentin</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span3">
					<p class="left">REQUIRES</p>
					<p class="right">: 3GB Hard Disk Space</p>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="pop-up">
	<div id="small-dialog3" class="mfp-hide book-form">
		<div class="pop-up-content-agileits-w3layouts">
			<div class="col-md-6 w3ls-left">
				<img src="../../../resources/images/g3big.jpg" alt=" " class="img-responsive zoom-img" />
			</div>
			<div class="col-md-6 w3ls-right">
				<h4>Game-3</h4>
				<p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec, sagittis massa. </p>
				<p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
				<div class="span span1">
					<p class="left">NAME</p>
					<p class="right">: Venenatis</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span2">
					<p class="left">DEVELOPER</p>
					<p class="right">: Stanley</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span3">
					<p class="left">REQUIRES</p>
					<p class="right">: 1GB Hard Disk Space</p>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="pop-up">
	<div id="small-dialog4" class="mfp-hide book-form">
		<div class="pop-up-content-agileits-w3layouts">
			<div class="col-md-6 w3ls-left">
				<img src="../../../resources/images/g5.jpg" alt=" " class="img-responsive zoom-img" />
			</div>
			<div class="col-md-6 w3ls-right">
				<h4>Game-4</h4>
				<p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec, sagittis massa. </p>
				<p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
				<div class="span span1">
					<p class="left">NAME</p>
					<p class="right">: Interdum</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span2">
					<p class="left">DEVELOPER</p>
					<p class="right">: Spielberg</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span3">
					<p class="left">REQUIRES</p>
					<p class="right">: 3GB Hard Disk Space</p>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="pop-up">
	<div id="small-dialog5" class="mfp-hide book-form">
		<div class="pop-up-content-agileits-w3layouts">
			<div class="col-md-6 w3ls-left">
				<img src="../../../resources/images/g6.jpg" alt=" " class="img-responsive zoom-img" />
			</div>
			<div class="col-md-6 w3ls-right">
				<h4>Game-5</h4>
				<p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec, sagittis massa. </p>
				<p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
				<div class="span span1">
					<p class="left">NAME</p>
					<p class="right">: Faucibus</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span2">
					<p class="left">DEVELOPER</p>
					<p class="right">: Cameron</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span3">
					<p class="left">REQUIRES</p>
					<p class="right">: 2GB Hard Disk Space</p>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="pop-up">
	<div id="small-dialog6" class="mfp-hide book-form">
		<div class="pop-up-content-agileits-w3layouts">
			<div class="col-md-6 w3ls-left">
				<img src="../../../resources/images/g7big.jpg" alt=" " class="img-responsive zoom-img" />
			</div>
			<div class="col-md-6 w3ls-right">
				<h4>Game-6</h4>
				<p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec, sagittis massa. </p>
				<p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
				<div class="span span1">
					<p class="left">NAME</p>
					<p class="right">: Tincidunt</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span2">
					<p class="left">DEVELOPER</p>
					<p class="right">: Jackson</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span3">
					<p class="left">REQUIRES</p>
					<p class="right">: 4GB Hard Disk Space</p>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="pop-up">
	<div id="small-dialog7" class="mfp-hide book-form">
		<div class="pop-up-content-agileits-w3layouts">
			<div class="col-md-6 w3ls-left">
				<img src="../../../resources/images/g4big.jpg" alt=" " class="img-responsive zoom-img" />
			</div>
			<div class="col-md-6 w3ls-right">
				<h4>Game-7</h4>
				<p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec, sagittis massa. </p>
				<p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
				<div class="span span1">
					<p class="left">NAME</p>
					<p class="right">: Vestibulum</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span2">
					<p class="left">DEVELOPER</p>
					<p class="right">: Daniel</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span3">
					<p class="left">REQUIRES</p>
					<p class="right">: 2GB Hard Disk Space</p>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="pop-up">
	<div id="small-dialog8" class="mfp-hide book-form">
		<div class="pop-up-content-agileits-w3layouts">
			<div class="col-md-6 w3ls-left">
				<img src="../../../resources/images/g8.jpg" alt=" " class="img-responsive zoom-img" />
			</div>
			<div class="col-md-6 w3ls-right">
				<h4>Game-8</h4>
				<p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec, sagittis massa. </p>
				<p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
				<div class="span span1">
					<p class="left">NAME</p>
					<p class="right">: Vehicula ligula</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span2">
					<p class="left">DEVELOPER</p>
					<p class="right">: Cyrill</p>
					<div class="clearfix"></div>
				</div>
				<div class="span span3">
					<p class="left">REQUIRES</p>
					<p class="right">: 3GB Hard Disk Space</p>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<%@include file="../front/footer.jsp"%>
</body>
</html>
