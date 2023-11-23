<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Update Client Information</title>
</head>
<body>
    <div align="center">
        <div class="container text-center mt-5 fade-in" >
                <div class="jumbotron">
        <h1><u>Update Client Information</u></h1>
        <form:form action="/client" method="post" modelAttribute="clientRecord">
            <h3>
                
                Client ID: <form:input type="text" path="clientId" readonly="true" />
                <br><br>
                Client Name: <form:input type="text" path="clientName" readonly="true" />
                <br><br>
                Client Address: <form:input type="text" path="clientAddress" readonly="true" />
                <br><br>
                Contact No: <form:input type="text" path="contactNo" readonly="true" />
                <br><br>
                Hotel: <form:input type="text" path="hotelId" readonly="true" />
                <br><br>
                Accommodation: <form:input type="text" path="accommodationId" readonly="true" />
                <br><br>
                Check-in Date: <form:input type="text" path="checkInDate" readonly="true" />
                <br><br>
                Check-out Date: <form:input type="text" path="checkOutDate"/>
                <br><br>
                Pay Status:
                <select name="payStatus" path="payStatus">
                    <option value="Paid">Paid</option>
                    <option value="Pending">Pending</option>
                </select>
                <br><br>
                <button type="submit">Update</button>
                &nbsp;&nbsp;&nbsp;
              <button><a href="/client-find">Return</a></button>
            </h3>
        </form:form>
    </div>
    </div>
    </div>
</body>
</html>
