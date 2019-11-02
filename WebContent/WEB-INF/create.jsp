<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Film</title>
</head>
<body>
	<form:form action="createdFilm.do" method="POST" modelAttribute="film">
		<form:label path="title">Title:</form:label>
		<form:input path="title" />
		<form:errors path="title" />
		<br />
		<form:label path="description">Description:</form:label>
		<form:input path="description" />
		<form:errors path="description" />
		<br />
		<form:label path="releaseYear">Release Year:</form:label>
		<form:input path="releaseYear" />
		<form:errors path="releaseYear" />
		<br />
		<form:label path="languageId">Language ID:</form:label>
		<form:input path="languageId" />
		<form:errors path="languageId" />
		<br />
		<form:label path="rentalDuration">Rental Duration:</form:label>
		<form:input path="rentalDuration" />
		<form:errors path="rentalDuration" />
		<br />
		<form:label path="rentalRate">Rental Rate:</form:label>
		<form:input path="rentalRate" />
		<form:errors path="rentalRate" />
		<br />
		<form:label path="length">Length:</form:label>
		<form:input path="length" />
		<form:errors path="length" />
		<br />
		<form:label path="replacementCost">Replacement Cost:</form:label>
		<form:input path="replacementCost" />
		<form:errors path="replacementCost" />
		<br />
		<form:label path="rating">Rating:</form:label>
		<div>
			<input type="radio" name="rating" value="G"> G<br>
			<input type="radio" name="rating" value="PG"> PG<br>
			<input type="radio" name="rating" value="PG13"> PG-13<br>
			<input type="radio" name="rating" value="NC17"> NC-17<br>
		</div>
		<form:errors path="rating" />
		<br />
		<form:label path="specialFeatures">Special Features:</form:label>
		<div>
			<input type="checkbox" name="specialFeatures" value="Trailers">Trailers<br>
			<input type="checkbox" name="specialFeatures" value="Commentaries"> Commentaries<br>
			<input type="checkbox" name="specialFeatures" value="Deleted Scenes">Deleted Scenes<br>
			<input type="checkbox" name="specialFeatures" value="Behind the Scenes"> Behind the Scenes<br>
		</div>
	
		<form:errors path="specialFeatures" />
		<br />
		<input type="submit" value="Create Film" />
	</form:form>
</body>
</html>