<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Client List</title>
</head>
<body>
    <div align="center">
        <h1><u>New Client Entry Page</u></h1>
        <form action="/client/save" method="post">
            <h3>
                New Client ID: <input type="text" path="clientId" disabled="true" />
                <br><br>
                Client Name: <input type="text" path="clientName" />
                <br><br>
                Client Address: <input type="text" path="clientAddress" />
                <br><br>
                Contact No: <input type="text" path="contactNo" />
                <br><br>
                Hotel:
                <select path="hotelId">
                    <c:forEach items="${hotelList}" var="hotel">
                        <option value="${hotel.hotelId}">${hotel.hotelName}</option>
                    </c:forEach>
                </select>
                <br><br>
                Accommodation:
                <select path="accommodationId">
                    <c:forEach items="${accommodationList}" var="accommodation">
                        <option value="${accommodation.accommodationId}">${accommodation.accommodationName}</option>
                    </c:forEach>
                </select>
                <br><br>
                Accommodation Fare Per Day: <input type="text" path="accommodationFarePerDay" />
                <br><br>
                Check-in Date: <input type="text" path="checkInDate" />
                <br><br>
                Check-out Date: <input type="text" path="checkOutDate" />
                <br><br>
                Pay Status:
                <select path="payStatus">
                    <option value="Paid">Paid</option>
                    <option value="Pending">Pending</option>
                </select>
                <br><br>
                <button type="submit">Submit</button>
            </h3>
        </form>
    </div>
</body>
</html>