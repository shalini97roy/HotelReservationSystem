<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Client Service Details</title>
</head>
<body>
    <div align="center">
        <h1><u>Client Service Page</u></h1>
        <table border="2">
            <tr class="table-primary">
                <td>Serial No</td>
                <td>Client Id</td>
                <td>Service Type</td>
                <td>Date:</td>
                <td>Amount:</td>
            </tr>
            <c:forEach var="clientService" items="${clientServiceList}">
                <tr class="table-primary">
                    <td>${clientService.serialNumber}</td>
                    <td>${clientService.clientId}</td>
                    <td>${clientService.serviceType}</td>
                    <td>${clientService.date}</td>
                    <td>${clientService.amount}</td>
                </tr>
            </c:forEach>
        </table>
        <br><br>
        <button><a href="/show">back</a></button>
        <br/>
    </div>
</body>
</html>
