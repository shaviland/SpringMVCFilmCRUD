<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inventory Items</title>
</head>
<body>

	<c:forEach items="${inventoryItems}" var="invItem">
		<table>
			<tr>
				<td>${invItem}</td>
			</tr>
			<tr>
		</table>

	</c:forEach>
	<form action="index.html" method="GET">
		<input type="submit" class="btn btn-outline-light" value="Return to Home Page" />
	</form>
</body>
</html>