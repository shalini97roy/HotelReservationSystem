<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1><u>All Hotels</u></h1>
<h3>
<table border="2">
<tr>
<th>Hotel Id</th>
<th>Hotel Name</th>
</tr>
<c:forEach items="${hotelReport}" var="hotel">
<tr>
<td>${hotel.hotelId}</td>
<td>${hotel.hotelName}</td>
</tr>
</c:forEach>
</table>
<br>
<a href="index">Return</a>
</h3>
</div>
</body>
</html>