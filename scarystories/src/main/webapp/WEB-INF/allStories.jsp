<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/css/stories.css" />
<link rel="stylesheet" href="/css/logReg.css" />

<title>Stories</title>
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
	<a href="/home" type="button" class="btn btn-outline-danger">Home</a>
</div>

	<h1 class="h1" >Choose your Story </h1>

	<c:choose>
	<c:when test="${stories.isEmpty()}">
		<div class="container">
		
		<h3 class="text-center mt-5">There have been no stories passed down... Perhaps those who knew some have inexplicably disappeared...</h3>
		<p class="text-center mt-5 text-danger">Anyways... want to add one?</p>
		<div class="d-flex justify-content-center">
		<a href="/stories/new"><img src='<c:url value="/img/campfire.png"/>' alt="create page pic" class="campfire2" title="Add a Story"/></a>
		</div>
		</div>
	</c:when>
	<c:otherwise>
<div class="scroll">
  <div class="scroll-container">

		<c:forEach var="story" items="${stories}">
		<div class="gridscroll">
			<h4 class="h4">${story.storyTitle}</h4>
			
			<a href="/story/${story.id}">
				<img src="${story.url}" />
			</a>
			
		</div>
		</c:forEach>
		
     
  </div>
</div>
		
	</c:otherwise>
	</c:choose>




</body>
</html>