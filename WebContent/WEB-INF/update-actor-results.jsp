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
<title>Actor Created Results</title>
</head>
<body>
	<h1>Actor Updated!</h1>
	<table>
		<tr>
			<td>First Name:</td>
			<td>${actor.firstName}</td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td>${actor.lastName}</td>
		</tr>
	</table>

	<form action="addActorToFilm.do" method="GET">
		<input type="hidden" name="actorID" value="${actor.id}" /> 
		<input type="number" name="filmID" /><br>
		<input type="submit" class="btn btn-outline-light" value="Add Actor to Film: (Enter Film ID)" />
	</form>
	<form action="deleteActor.do" method="GET">
		<input type="hidden" name="actorID" value="${actor.id}" class="btn btn-outline-dark"/> <input
			type="submit" class="btn btn-outline-light" value="DELETE ACTOR" />
	</form>
	<form action="goToUpdateActor.do" method="GET">
		<input type="hidden" name="actorID" value="${actor.id}" /> <input
			type="submit" class="btn btn-outline-light" value="UPDATE ACTOR" />
	</form>
	<form action="index.html" method="GET">
		<input type="submit" class="btn btn-outline-light" value="Return to Home Page" />
	</form>
</body>
</html>