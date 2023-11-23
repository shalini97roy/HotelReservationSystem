<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Client Service List</title>
</head>
<body>
     <div align="center">
        <h1><u>Clients Service List</u></h1>
        
            <table border="2">
                <tr class="table-primary">
                    <th>Serial No</th>
                    <th>Client Id</th>
                    <th>Service Type</th>
                    <th>Date</th>
                    <th>Amount</th>
                    </tr>
                <c:forEach items="${clientServList}" var="clientServ">
                    <tr class="table-primary">
                        <td>${clientServ.serialNumber}</td>
                        <td>${clientServ.clientId}</td>
                        <td>${clientServ.serviceType}</td>
                        <td>${clientServ.date}</td>
                        <td>${clientServ.amount}</td>
                    </tr>
                </c:forEach>
            </table>
            <h3>
            <br>
           <button><a href="/clientServiceInd">Back</a></button>
       </h3>
    </div>
</body>
</html>