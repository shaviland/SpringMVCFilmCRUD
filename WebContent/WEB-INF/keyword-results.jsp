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

	<c:forEach items="${films}" var="film">
		<table>
			<tr>
				<td>Title: ${film.title} [</td>
				<td>ID: ${film.id}]</td>
			</tr>
		</table>

	</c:forEach>
	<form action="getFilmByID.do" method="GET">
            <p>Film Details by ID</p>
            <input type="input" name="filmID" placeholder="Enter film ID"/> 
            <input type="submit" value="Search" />
        </form>
	<form action="index.html" method="GET">
		<input type="submit" value="Return to Home Page" />
	</form>
</body>
</html>