<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		<tr>
			<td>Cast:</td>
			<td>${film.actors}</td>
		</tr>
		<tr>
			<td>Categories:</td>
			<td>${film.categories}</td>
		</tr>
	</table>

	<form action="deleteFilm.do" method="GET">
		<input type="hidden" name="filmID" value="${film.id}" /> <input
			type="submit" value="DELETE FILM" />
	</form>
	<form action="goToUpdateFilm.do" method="GET">
		<input type="hidden" name="filmID" value="${film.id}" /> <input
			type="submit" value="UPDATE FILM" />
	</form>
	<form action="index.html" method="GET">
		<input type="submit" value="Return to Home Page" />
	</form>
</body>
</html>