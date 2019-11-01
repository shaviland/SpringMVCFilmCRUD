<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film by ID Search Results</title>
</head>
<body>
	<form:form action="GetFilmByID.do" method="POST"
		modelAttribute="FilmID">
		<form:label path="FilmID">Film ID:</form:label>
		<form:input path="FilmID" />
		<form:errors path="FilmID" />
		<br />
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>