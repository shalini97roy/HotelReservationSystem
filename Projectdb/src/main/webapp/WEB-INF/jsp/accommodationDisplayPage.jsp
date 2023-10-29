<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accommodation Display Page</title>
</head>
<body>
<div align="center">
<h1><u>All Accommodations</u></h1>
<h3>
<table border="2">
<tr>
<th>Accommodation Id</th>
<th>Accommodation Name</th>
<th>Fare Per Day</th>
</tr>
<c:forEach items="${accommodationReport}" var="accommodation">
<tr>
<td>${accommodation.accommodationId}</td>
<td>${accommodation.accommodationName}</td>
<td>${accommodation.farePerDay}</td>
</tr>
</c:forEach>
</table>
<br>
<a href="index">Return</a>
</h3>
</div>
</body>
</html>