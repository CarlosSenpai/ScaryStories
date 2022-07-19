<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/css/logReg.css" /> 
<link rel="stylesheet" href="/css/userPage.css" />
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/css/title.css" />


<title>User Home</title>
</head>
<body id="bodyFix">

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
	<a href="/stories" type="button" class="btn btn-outline-primary">Stories</a>
</div>

<h1 class="bloodMessage"> Author: <c:out value="${userInfo.userName}"></c:out> 
		<span class="drop"></span>
		<span class="drop"></span>
		<span class="drop"></span>
		<span class="drop"></span>
		<span class="drop"></span>
		<span class="drop"></span>
</h1>

<div>

<c:choose>
<c:when test="${userInfo.stories.isEmpty()}">
	<h3 class="h3">No stories have been told</h3>
</c:when>
<c:otherwise>
	<h3 class="h3">Your Stories:</h3>
	
	
	<div class="scroll">
	<div class="scroll-container">
	
	<c:forEach var="userStory" items="${stories}" >
	
		<div class="gridscroll">
		<h4 class="h4">${userStory.storyTitle}</h4>
		<a href="/story/${userStory.id}">
			<img src="${userStory.url}"/>
		</a>
		
		<c:if test="${userStory.user.getId().equals(userInfo.id)}">
		
		<div> 
				<a href="/stories/edit/${userStory.id}">Edit</a>
				<a href="/stories/delete/${userStory.id}">Delete</a>
		</div>
		
		</c:if>
		
		</div>
	
	
		
	</c:forEach>
	
	</div>
	</div>
	
</c:otherwise>
</c:choose>
			
</div>
</body>
</html>
