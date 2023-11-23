<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Client List</title>
</head>
<body>
    <div align="center">
    <div class="container text-center mt-5 fade-in" >
            <div class="jumbotron">
        <h1><u>New Client Entry Page</u></h1>
        <form:form action="/client" method="post" modelAttribute="clientRecord">
            <h3>
                New Client ID: <form:input type="text" path="clientId" readonly="true" />
                <br><br>
                Client Name: <form:input type="text" path="clientName" />
                <br><br>
                Client Address: <form:input type="text" path="clientAddress" />
                <br><br>
                Contact No: <form:input type="text" path="contactNo" />
                <br><br>
                Hotel:
<input type="text" list="hotels" name="hotelId" />
<datalist id="hotels">
    <c:forEach items="${hotelIdList}" var="hId">
        <option value="${hId}">${hId}</option>
    </c:forEach>
</datalist>
<br><br>

Accommodation:
<input type="text" list="accommodations" name="accommodationId" />
<datalist id="accommodations">
    <c:forEach items="${accommodationIdList}" var="accommodation">
        <option value="${accommodation}">${accommodation}</option>
    </c:forEach>
</datalist>
<br><br>


                Check-in Date: <form:input type="text" path="checkInDate" />
                <br><br>
                Check-out Date: <form:input type="text" path="checkOutDate" readOnly="true"/>
                <br><br>
                Pay Status:
				<input type="text" list="payStatusList" name="payStatus" />
				<datalist id="payStatusList">
    			<option value="Paid">
    			<option value="Pending">
				</datalist>
				<br><br>

                <button type="submit">Submit</button>
                &nbsp;&nbsp;
              <button><a href="/clientInd">Return</a></button>
            </h3>
        </form:form>
    </div>
    </div>
    </div>
</body>
</html>