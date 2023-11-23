<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Client Details</title>
</head>
<body>
    <div align="center">
        <h1><u>Client Details Page</u></h1>
        <h3>
        <table border="2">  
              <tr>
                   <td>Client Id:</td>
            <td> ${clientRecord.clientId}</td>
            </tr>
            <tr>
                <td>Client Name:</td>
            <td> ${clientRecord.clientName}</td>
            </tr>
            <tr>
                 <td>Client Address:</td>
            <td> ${clientRecord.clientAddress}</td>
            </tr>
            <tr>
                <td>Client Contact No:</td>
             <td>${clientRecord.contactNo}</td>
            </tr>
            <tr>
                 <td>Hotel Id:</td>
             <td>${clientRecord.hotelId}</td>
             </tr>
             <tr>
                <td>Accommodation:</td>
            <td> ${clientRecord.accommodationId}</td>
            </tr>
            <tr>
               <td>Check-in Date:</td>
            <td> ${clientRecord.checkInDate}</td>
            </tr>
            <tr>
               <td>Check-out Date:</td>
            <td> ${clientRecord.checkOutDate}</td>
            </tr>
            <tr>
                <td> Client Pay Status:</td>
           <td> ${clientRecord.payStatus}</td>
           </tr>
            </table>
            <br/>
            <a href="/client-find">Return</a>
        </h3>
    </div>
</body>
</html>