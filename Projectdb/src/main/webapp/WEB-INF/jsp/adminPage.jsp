<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Administration Page</title>
<style>
        body {
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container text-center mt-5 fade-in">
<div class="jumbotron">
        <h1>Admin Access Page</h1>
<a href="/hotelInd" class="btn btn-primary mr-3">HOTEL</a>
<a href="/accommodationInd" class="btn btn-primary mr-3">ACCOMMODATION</a>
<a href="/clientInd" class="btn btn-primary mr-3">CLIENT</a>
<a href="/clientServiceInd" class="btn btn-primary mr-3">CLIENT-SERVICE</a>
<br><br>
<a href="/index" class="btn btn-primary mr-3">Home Page</a>
</div>
</div>
</body>
</html>