<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accommodation Entry Page</title>
</head>
<body>
    <div align="center">
    <div class="container text-center mt-5 fade-in" >
            <div class="jumbotron">
    <h1><u>New Accommodation Entry Page</u></h1>
    <form action="/accommodation" method="post">
        <h3>
            New Accommodation Id: <input type="text" name="accommodationId"/>
            <br><br>
            New Accommodation Name: <input type="text" name="accommodationName"/>
            <br><br>
            New Accommodation fare per day: <input type="text" name="farePerDay"/>
            <br><br>
            <button type="submit">Submit</button>
            &nbsp;&nbsp;
           <button><a href="/accommodationInd">Return</a></button>
        </h3>
    </form>
</div>
</div>
</div>
</body>
</html>