<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Actor</title>
</head>
<body>
	<form:form action="updateActor.do" method="POST" modelAttribute="actor">
		<form:label path="firstName">First Name:</form:label>
		<form:input path="firstName" default = "${oldActor.firstName}" placeholder="${oldActor.firstName}" value="${oldActor.firstName}"/>
		<form:errors path="firstName" />
		<br />
		<form:label path="lastName">Last Name::</form:label>
		<form:input path="lastName" default = "${oldActor.lastName}" placeholder="${oldActor.lastName}" value="${oldActor.lastName}"/>
		<form:errors path="lastName" />
		<br />
		
		<br />
		<input type="hidden" name="actorID" value="${oldActor.id}" /> 
		<input type="submit" value="Update Actor" />
		
	</form:form>
</body>
</html>