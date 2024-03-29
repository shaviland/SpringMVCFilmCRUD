<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">
<title>Update Actor</title>
</head>
<body>
	<div class="container">
		<div id="banner" class="jumbotron text-center">
			<h1>Update An Actor</h1>
		</div>
	</div>
	<form:form action="updateActor.do" method="POST" modelAttribute="actor">
		<form:label path="firstName">First Name:</form:label>
		<form:input path="firstName" default = "${oldActor.firstName}" placeholder="${oldActor.firstName}" value="${oldActor.firstName}"/>
		<form:errors path="firstName" />
		<br />
		<form:label path="lastName">Last Name::</form:label>
		<form:input path="lastName" default = "${oldActor.lastName}" placeholder="${oldActor.lastName}" value="${oldActor.lastName}"/>
		<form:errors path="lastName" />
		<br />
		
		<br />
		<input type="hidden" name="actorID" value="${oldActor.id}" /> 
		<input type="submit" class="btn btn-outline-light" value="Update Actor" />
		
	</form:form>
</body>
</html>