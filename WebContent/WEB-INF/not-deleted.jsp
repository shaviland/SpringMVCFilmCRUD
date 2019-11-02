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
	<h3>HAS BEEN DELETED</h3>
	
		<form action="index.html" method="GET">

		<input type="submit" value="Return to Home Page" />
	</form>
</body>
</html>