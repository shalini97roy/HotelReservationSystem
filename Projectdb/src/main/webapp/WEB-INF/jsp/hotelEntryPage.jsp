<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Entry</title>
</head>
<body>
<div align="center">
    <div class="container text-center mt-5 fade-in" >
            <div class="jumbotron">
    <h1><u>New Hotel Entry Page</u></h1>
    <form:form action="/hotel" method="post" modelAttribute="hotelRecord">
        <h3>
            New Hotel Id: <form:input type="text" path="hotelId" readOnly="true" />
            <br><br>
            New Hotel Name: <form:input type="text" path="hotelName" />
            <br><br>
            <button type="submit" class="btn btn-success">Submit</button>
            &nbsp;&nbsp;
           <button><a href="/hotelInd" class="btn btn-primary mr-3">Return To Hotel Index Page</a></button>
        </h3>
    </form:form>
</div>
</div>
</div>
</body>
</html>
