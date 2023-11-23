<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Client Service Page</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
    <div align="center">
    <div class="container text-center mt-5 fade-in" >
            <div class="jumbotron">
        <h1><u>New Client Service Entry Page</u></h1>
        <form:form action="/client-service-entry" method="post" modelAttribute="clientServiceRecord">
            <h3>
              Enter Service No: <form:input type="text" path="serialNumber" readOnly="true"/>
                <br><br>
               Enter Client Id: <input type="text" list="services" name="clientId" />
<datalist id="services">
    <c:forEach items="${clientIdList}" var="cId">
        <option value="${cId}">${cId}</option>
    </c:forEach>
</datalist>
                <br><br>
                Service Type: <input type="text" list="serviceList" name="serviceType" />
				<datalist id="serviceList">
    			<option value="Food">
    			<option value="Car">
    			<option value="Laundry">
				</datalist>
                <br><br>
                Date:<form:input type="text" path="date" id="datepicker"/>
                <br><br>
              Amount:<form:input type="text" path="amount"/>
                <br><br>
                <button type="submit">Submit</button>
                &nbsp;&nbsp;
                <button><a href="/clientServiceInd">Return</a></button>
            </h3>
        </form:form>
    </div>
    </div>
    </div>
    <script>
$(function() {
    $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd', // Define the date format as desired
        changeMonth: true,
        changeYear: true,
        yearRange: '1950:2050' // Adjust the year range as needed
    });
});
</script>
    
</body>
</html>