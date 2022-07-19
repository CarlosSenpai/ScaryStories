<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/css/logReg.css" />
<link rel="stylesheet" href="/css/oneStory.css" />
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<title>Story Time</title>
</head>
<body id="bodyFix" >

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
	<a href="/home" type="button" class="btn btn-outline-danger">Home</a>
	<a href="/stories" type="button" class="btn btn-outline-primary">More Stories</a>
</div>
	
<div id="story">

<h2 class="h2" >${story.storyTitle}</h2>

<img src="${story.url}" />
<p id="p" >${story.storyContent}</p>

</div>

</body>
</html>