<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Hotel Display Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center"><u>All Hotels</u></h1>
    <div class="text-center">
        <table class="table table-bordered">
            <thead>
                <tr class="table-primary">
                    <th>Hotel Id</th>
                    <th>Hotel Name</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${hotelReport}" var="hotel">
                    <tr class="table-primary">
                        <td>${hotel.hotelId}</td>
                        <td>${hotel.hotelName}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <br>
        <a href="/hotelInd" class="btn btn-primary">Return To Hotel Index Page</a>
    </div>
</div>
</body>
</html>
