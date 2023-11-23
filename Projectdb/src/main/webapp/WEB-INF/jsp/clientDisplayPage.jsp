<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Client List</title>
</head>
<body>
     <div align="center">
        <h1><u>Client List</u></h1>
        
            <table border="2">
                <tr>
                    <th>Client ID</th>
                    <th>Client Name</th>
                    <th>Client Address</th>
                    <th>Contact No</th>
                    <th>Hotel ID</th>
                    <th>Accommodation ID</th>
                    <th>Check-in Date</th>
                    <th>Check-out Date</th>
                    <th>Pay Status</th>
                </tr>
                <c:forEach items="${clientList}" var="client">
                    <tr>
                        <td>${client.clientId}</td>
                        <td>${client.clientName}</td>
                        <td>${client.clientAddress}</td>
                        <td>${client.contactNo}</td>
                        <td>${client.hotelId}</td>
                        <td>${client.accommodationId}</td>
                        <td>${client.checkInDate}</td>
                        <td>${client.checkOutDate}</td>
                        <td>${client.payStatus}</td>
                    </tr>
                </c:forEach>
            </table>
            <h3>
            <br>
           <button><a href="/clientInd">Back to Client Index</a></button>
       </h3>
    </div>
</body>
</html>