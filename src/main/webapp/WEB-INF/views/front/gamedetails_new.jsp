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
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.JSONValue" %>
<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="org.json.simple.parser.ParseException" %>
<% //response.setHeader("Access-Control-Allow-Origin","*"); %> 

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
	<script type="text/javascript" src="../../../resources/front/js/jquery.ajax-cross-origin.min.js"></script>
</head>
<%! 
	
		int a; 
		int b;
		
		public int sum(int a, int b) {
		return a + b;
		}
		JSONObject jsonObj = new JSONObject();
		
	%>
	<%
		String appids = request.getParameter("appids");
		//JSONObject inp = request.getParameter("param1");
		String requestUrl = "https://store.steampowered.com/api/appdetails?appids=";
		requestUrl += appids;
		requestUrl += "&l=korean";
		
		
		URL url = new URL(requestUrl);

		InputStreamReader isr = new InputStreamReader(url.openConnection().getInputStream(), "UTF-8");

		JSONObject object = (JSONObject)JSONValue.parse(isr);
		
		//JSONObject jsonObject = new JSONObject(requestUrl);
		//out.println("object = " + object.get(appids));
		
		JSONObject object2 = (JSONObject)object.get(appids);
		//out.println("object2 = " + object2);
		
		JSONObject object3 = (JSONObject)object2.get("data");
		//out.println("object3 = " + object3);
		
		//out.println("object3 = " + object3.get("header_image"));
		
		JSONObject pcRequirement = (JSONObject)object3.get("pc_requirements");
		//out.println(pcRequirement);
		
		JSONObject releaseDate = (JSONObject)object3.get("release_date");
		//out.println(releaseDate);
		
		//JSONObject movies = (JSONObject)object2.get("movies");
		//out.println("movies = " + movies);
		
		// 변수 목록
		String name = (String)object3.get("name");
		String header_image = (String)object3.get("header_image");
		String about_the_game = (String)object3.get("about_the_game");
		String short_description = (String)object3.get("short_description");
		String detailed_description = (String)object3.get("detailed_description");
		String background = (String)object3.get("background");
		String pcMinimum = (String)pcRequirement.get("minimum");
		String pcRecommended = (String)pcRequirement.get("recommended");
		if (pcRecommended == null) 
			pcRecommended = "&nbsp-";
		String releaseDate_date = (String)releaseDate.get("date");
		if (releaseDate_date == null) 
			releaseDate_date = "&nbsp-";
		
		
		// 카테고리 배열
		ArrayList<String> categoryList = new ArrayList<String>();
		JSONArray category_JSONArray = (JSONArray)object3.get("categories");
		if (category_JSONArray != null) {
			int len = category_JSONArray.size();
			for (int i = 0; i < len; i++) {
				JSONObject category = (JSONObject)category_JSONArray.get(i);
				categoryList.add(category.get("description").toString());
			}
			/*
			for (int i = 0; i < categoryList.size(); i++) {
				out.println(categoryList.get(i));
			}
			*/
		}
		// 장르 배열
		ArrayList<String> genreList = new ArrayList<String>();
		JSONArray genres_JSONArray = (JSONArray)object3.get("genres");
		if (genres_JSONArray != null) {
			int len = genres_JSONArray.size();
			for (int i = 0; i < len; i++) {
				JSONObject genre = (JSONObject)genres_JSONArray.get(i);
				genreList.add(genre.get("description").toString());
			}
			/*
			for (int i = 0; i < genreList.size(); i++) {
				out.println(genreList.get(i));
			}
			*/
		}
		
		// 스크린샷 배열
		ArrayList<String> screenshotList = new ArrayList<String>();
		JSONArray screenshots_JSONArray = (JSONArray)object3.get("screenshots");
		if (genres_JSONArray != null) {
			int len = screenshots_JSONArray.size();
			for (int i = 0; i < len; i++) {
				JSONObject screenshot = (JSONObject)screenshots_JSONArray.get(i);
				screenshotList.add(screenshot.get("path_full").toString());
			}
			/*
			for (int i = 0; i < screenshotList.size(); i++) {
				out.println(screenshotList.get(i));
			}
			*/
			background = screenshotList.get(0);
		}
	%>
<style>
	.steam_background {
		background-color: #1B2738;
        background-repeat: no-repeat;
        background-size: 100%;
	}
	.w3l_categories > strong {
		display: none;
	}
	.wthree_blog_left_grid > img{
		width: auto;
	}
	.bb_tag {
		text-align: left;
	}
	.steam_short_description {
	
	}
</style>
<body>
	<%@include file="../front/header.jsp"%>
	<script>
	function getParam(sname) {
	    var params = location.search.substr(location.search.indexOf("?") + 1);
	    var sval = "";
	    params = params.split("&");
	    for (var i = 0; i < params.length; i++) {
	        temp = params[i].split("=");
	        if ([temp[0]] == sname) { sval = temp[1]; }
	    }
	    return sval;
	}
	console.log(getParam("appids"));
	
	var  requestUrl = "https://store.steampowered.com/api/appdetails?appids=";
	requestUrl += getParam("appids");
	requestUrl += "&l=korean";
	console.log(requestUrl);

	$(document).ready(function(){
		$.getJSON(requestUrl+"&callback=?", function(data) {

		    alert("successs");

		});
	    
	});
	      
	function loadData() {
		alert('1');
		$.ajax({
			type: "GET",
			crossDomain: true,
			url: requestUrl,
			dataType: "json",
			success: function(data){
				alert("성공");
			},
			error: function(xhr, status, error) {
				alert("에러발생");
			}
		});
	}
/*
	$(document).ready(function(){
		
		$.ajax({
			url : requestUrl,
			//crossDomain: true,
			dataType:"json",
			headers: {  
	            'Access-Control-Allow-Credentials' : true,  
	            'Access-Control-Allow-Origin': 'http://localhost:2020',  
	            'Access-Control-Allow-Methods':'GET',  
	            'Access-Control-Allow-Headers':'application/json',  
	             },  
			success:function(data){
				$.each(data, function(index, item){
					console.log(item.appids);
					
					//var a = $("<b></b><br>").html(item.author.id);
					//var b = $("<img />").attr("src",item.author.face);
					//var c = $("<img />").attr("src",item.author.icon);
					//var d = $("<p></p>").html(item.pubDate);
					//var e = $("<p></p>").html(item.body);
					//var f = $("<img />").attr("src",item.media.photoUrl);
					//$("<div></div>").append(a,b,c,d,e,f).appendTo("#disp");
					
				});
			},
			error:function(){
				alert("error");
			}
		});
	});
	*/
	</script>
	<!-- breadcrumbs -->
	<div class="agileits_breadcrumbs" style="background-color: #1B2738;">
		<div class="container">
			<div class="agileits_breadcrumbs_left">
				<ul>
					<li><a href="/">Home</a><i> |</i></li>
					<li><a href="/front/gamelist">Games</a><i> |</i></li>
					<li style="color: #fff"><%= name %><i> |</i></li>
					<li>New</li>
				</ul>
			</div>
			<div class="agileits_breadcrumbs_right">
				<h3></h3>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<div class="gallery-w3layouts" id="gallery">
		<form action="/front/admin_gameremove" method="POST">
			<input type="hidden" value=<%= appids %> name="appids">
			<input type="submit" class="blog-read"  value="Remove">
		</form>
	</div>
	
	
	<!-- single -->
	<div class="steam_background">
	<div class="test" style="color: yellow;"></div>
		<div class="blog">
			<div class="container">
				<div class="col-md-7 wthree_blog_left" >
					<div class="wthree_blog_left_grid">
						<div class="wthree_blog_left_grid_slider">
							<img src='<%= header_image %>' alt=" " class="img-responsive" />
						</div>
						<h4><a href="https://store.steampowered.com/app/<%= appids %>" style="color: #e91e63"><c:out value="${gamedetails.gametitle }"/></a></h4>
						
						<ul>
							<li><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a href="#"></a><i>|</i></li>
							<li><span class="glyphicon glyphicon-heart" aria-hidden="true"></span><a href="#">20</a><i>|</i></li>
							<li><span class="glyphicon glyphicon-tag" aria-hidden="true"></span><a href="#">5</a><i>|</i></li>
							<li><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>publisher</li>
						</ul>
						<br /><br />
						<h3 class="steam_short_description"><%= short_description %></h3>
						<p>
						<%= detailed_description %>
						
						</p><br /><br />
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
						<h3>요구 사양</h3>
						<p></p>
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
						<h3>Genres</h3>
						<ul>
						<% 
						for (int i = 0; i < genreList.size(); i++) {
						%>
						<li><a>
						<%
							out.println(genreList.get(i));
						%>
						</a></li>
						<%
						}
						%>
						</ul>
					</div>
	
					<div class="w3l_categories"> <!-- w3l_archives -->
						<h3>Categories</h3>
						<ul>
						<% 
						for (int i = 0; i < categoryList.size(); i++) {
						%>
						<li><a>
						<%
							out.println(categoryList.get(i));
						%>
						</a></li>
						<%
						}
						%>
						</ul>
					</div>
					<div class="w3l_categories"> <!-- w3l_archives -->
						<h3>최소 사양</h3>
						<%=pcMinimum%>
					</div>
					<div class="w3l_categories"> <!-- w3l_archives -->
						<h3>권장 사양</h3>
						<%=pcRecommended%>
					</div>
					<div class="w3l_categories"> <!-- w3l_archives -->
						<h3>Release Date</h3>
						<ul>
							<li><%=releaseDate_date%></li>
						</ul>
					</div>
					<div class="w3agile_flickr_posts">
						<h3>Latest Games</h3>
						<c:forEach items="${gamelist}" var="gf_game">
							<div class="w3agile_flickr_post_left" >
								<a href='/front/gamedetails?appids=<c:out value="${gf_game.appids}"/>'>
								<img src="${gf_game.thumbnail}" alt=" " class="img-responsive" 
								style="width: 220px; height: 220px;  overflow: hidden; display: block;"/>
								</a>
							</div>
						</c:forEach>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //single -->

<%@include file="../front/footer.jsp"%>
</body>

</html>
