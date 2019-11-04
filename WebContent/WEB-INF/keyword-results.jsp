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

	<c:forEach items="${films}" var="film">
		<table>
			<tr>
				<td>Title: ${film.title}</td>
			</tr>
			<tr>
				<td>ID: [${film.id}]</td>

			</tr>
			<tr>
				<td>Description ${film.description }</td>
			</tr>
		</table>

	</c:forEach>
	<form action="getFilmByID.do" method="GET">
		<p>Search Film Details by ID</p>
		<input type="number" name="filmID" required value = "" placeholder="Enter film ID" /> <input
			type="submit" value="Search" />
	</form>
	<form action="index.html" method="GET">
		<input type="submit" value="Return to Home Page" />
	</form>
</body>
</html>