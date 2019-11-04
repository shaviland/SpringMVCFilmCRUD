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
<title>Create Film</title>
</head>
<body>
	<form:form action="createdFilm.do" method="POST" modelAttribute="film">
		<form:label path="title">Title:</form:label>
		<form:input path="title" required="required"/>
		<form:errors path="title" />
		<br />
		<form:label path="description">Description:</form:label>
		<form:input path="description" required="required"/>
		<form:errors path="description" />
		<br />
		<form:label path="releaseYear">Release Year:</form:label>
		<form:input type="number" path="releaseYear" required="required"/>
		<form:errors path="releaseYear" />
		<br />
		<form:label path="languageId">Language:</form:label>
		<form:select path="languageId">
			<option value="1">English</option>
			<option value="2">Italian</option>
			<option value="3">Japanese</option>
			<option value="4">Mandarin</option>
			<option value="5">French</option>
			<option value="6">German</option>
		</form:select>
		<form:errors path="languageId" />
		<br />
		<form:label path="rentalDuration">Rental Duration:</form:label>
		<form:select path="rentalDuration">
			<option value="1">1 Day</option>
			<option value="2">2 Days</option>
			<option value="3">3 Days</option>
			<option value="4">4 Days</option>
			<option value="5">5 Days</option>
			<option value="6">6 Days</option>
			<option value="7">7 Days</option>
		</form:select>
		<form:errors path="rentalDuration" />
		<br />
		<form:label path="rentalRate">Rental Rate:</form:label>
		<form:input path="rentalRate" type="number"/>
		<form:errors path="rentalRate" />
		<br />
		<form:label path="length">Length:</form:label>
		<form:input path="length" type="number" required="required"/>
		<form:errors path="length" />
		<br />
		<form:label path="replacementCost">Replacement Cost:</form:label>
		<form:input path="replacementCost" type="number"/>
		<form:errors path="replacementCost" />
		<br />
		<form:label path="rating">Rating:</form:label>
		<div>
			<input type="radio" name="rating" value="G"> G<br> <input
				type="radio" name="rating" value="PG"> PG<br> <input
				type="radio" name="rating" value="PG13"> PG-13<br> <input
				type="radio" name="rating" value="NC17"> NC-17<br>
		</div>
		<form:errors path="rating" />
		<br />
		<form:errors path="specialFeatures" />
		<br />
		
		<form:label path="specialFeatures">Special Features:</form:label>
		<div>
			<input type="checkbox" name="specialFeatures" value="Trailers">Trailers<br>
			<input type="checkbox" name="specialFeatures" value="Commentaries">Commentaries<br>
			<input type="checkbox" name="specialFeatures" value="Deleted Scenes">DeletedScenes<br> 
			<input type="checkbox" name="specialFeatures" value="Behind the Scenes">Behind the Scenes<br>
		</div>
		<form:errors path="specialFeatures" />
		<br />
		
		<input type="submit" value="Create Film" />
	</form:form>
</body>
</html>