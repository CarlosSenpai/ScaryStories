<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="/css/logReg.css" rel="stylesheet">
<link href="/css/home.css" rel="stylesheet">
<link rel="stylesheet" href="/css/title.css" />
</head>
<body>


	<div id="foglayer_01" class="fog">
		<div class="image01"></div>
		<div class="image02"></div>
	</div>
	<div id="foglayer_02" class="fog">
		<div class="image01"></div>
		<div class="image02"></div>
	</div>
	<div id="foglayer_03" class="fog">
		<div class="image01"></div>
		<div class="image02"></div>
	</div>
	
<div class="d-flex justify-content-end">
	<a href="/logout" type="button" class="btn btn-outline-warning">Logout</a>
</div>


	<h1 class="bloodMessage">
		Tell your Story <span class="drop"></span> <span class="drop"></span>
		<span class="drop"></span> <span class="drop"></span> <span
			class="drop"></span> <span class="drop"></span>
	</h1>


	<div>
		<h4 class="color" id="textFix">Profile</h4>
		<a href="/user/${user.id}">

			<div class="book" id="fix">
				<div class="back" id="backRed"></div>
				<div class="page6"></div>
				<div class="page5"></div>
				<div class="page4"></div>
				<div class="page3"></div>
				<div class="page2"></div>
				<div class="page1"></div>
				<div class="front" id="frontRed"></div>
			</div>
		</a>

	</div>
	<div class="div">

		<h4 class="color">New Story</h4>
		<a href="/stories/new">
			<div class="book">
				<div class="back"></div>
				<div class="page6"></div>
				<div class="page5"></div>
				<div class="page4"></div>
				<div class="page3"></div>
				<div class="page2"></div>
				<div class="page1"></div>
				<div class="front"></div>
			</div>
		</a>


		<h4 class="color">All Stories</h4>
		<a href="/stories">
			<div class="book">
				<div class="back" id="backPurple"></div>
				<div class="page6"></div>
				<div class="page5"></div>
				<div class="page4"></div>
				<div class="page3"></div>
				<div class="page2"></div>
				<div class="page1"></div>
				<div class="front" id="frontPurple"></div>
			</div>
		</a>

	</div>





</body>
</html>