<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/create-and-edit.css" />
    <link rel="stylesheet" href="/css/logReg.css" />
    <link rel="stylesheet" href="/css/editStory.css" />
    <link rel="stylesheet" href="/css/title.css" />
<title>Edit Story</title>
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
	<a href="/stories" type="button" class="btn btn-outline-primary">Stories</a>
</div>


<div class="d-flex container flex-column text-center justify-content-center align-items-center">	

<h2 class="bloodMessage">Edit Story:</h2>
		<span class="drop"></span>
		<span class="drop"></span>
		<span class="drop"></span>
		<span class="drop"></span>
		<span class="drop"></span>
		<span class="drop"></span>

</div>
	<div class="d-flex container flex-column text-center justify-content-center align-items-center">		
	<form:form action="/stories/edit/${story.id}" method="put" modelAttribute="story">
	
		<p class="createtext1">
			<form:label path="storyTitle" class="formTag">Story Title: </form:label>
			<form:errors path="storyTitle" class="error"/>
			<form:input path="storyTitle" value="${story.storyTitle}"/>
		</p>
		
		<img src="${story.url}" /> 
		
		<p class="createtext1">
			<form:label path="url" class="formTag">Image: </form:label>
			<form:errors path="url" class="error" />
			<form:input path="url" type="text"/>
		</p>
				
		<p class="createtext3">
			<form:label path="storyContent" class="formTag">Tell your story: </form:label>
			<form:errors path="storyContent" class="error"/>
			<form:textarea rows="3" path="storyContent" value="${story.storyContent}"/>
		</p>
		
		
		<p>
			<input type="submit" value="Update" class="btn btn-danger my-2"/>
		</p>
				
	</form:form>
</div>

</body>
</html>