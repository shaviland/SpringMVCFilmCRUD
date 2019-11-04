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
<title>Film Query Results</title>
</head>
<body>
	<h1>${film.title}</h1>
	<h3>${film.description}</h3>
	
	<table>
		<tr>
			<td>Release Year:</td>
			<td>${film.releaseYear}</td>
		</tr>
		<tr>
			<td>Language:</td>
			<td>${film.language}</td>
		</tr>
		<tr>
			<td>Length:</td>
			<td>${film.length}</td>
		</tr>
		<tr>
			<td>Rating:</td>
			<td>${film.rating}</td>
		</tr>
		<tr>
			<td>Special Features:</td>
			<td>${film.specialFeatures}</td>
		</tr>
		<c:if test="${not empty film.actors }">
		<tr>
			<td>Cast:</td>
			<td>${film.actors}</td>
		</tr>
		</c:if>
		<c:if test="${not empty film.categories}">
		<tr>
			<td>Categories:</td>
			<td>${film.categories}</td>
		</tr>
		</c:if>
	</table>

	<form action="deleteFilm.do" method="GET">
		<input type="hidden" name="filmID" value="${film.id}" /> <input
			type="submit" class="btn btn-outline-light" value="DELETE FILM" />
	</form>
	<form action="goToUpdateFilm.do" method="GET">
		<input type="hidden" name="filmID" value="${film.id}" /> 
		<input type="submit" class="btn btn-outline-light" value="UPDATE FILM" />
	</form>
	<form action="index.html" method="GET">
		<input type="submit" class="btn btn-outline-light" value="Return to Home Page" />
	</form>
</body>
</html>