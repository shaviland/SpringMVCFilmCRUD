<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Actor Created Results</title>
</head>
<body>
	<h1>Actor Query Results:</h1>
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

	<form action="deleteActor.do" method="GET">
		<input type="hidden" name="actorID" value="${actor.id}" /> <input
			type="submit" value="DELETE ACTOR" />
	</form>
	<form action="goToUpdateActor.do" method="GET">
		<input type="hidden" name="actorID" value="${actor.id}" /> <input
			type="submit" value="UPDATE ACTOR" />
	</form>
	<form action="index.html" method="GET">
		<input type="submit" value="Return to Home Page" />
	</form>
</body>
</html>