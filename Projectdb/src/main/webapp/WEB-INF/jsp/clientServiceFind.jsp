<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<div class="container text-center mt-5 fade-in" >
            <div class="jumbotron">
<h3>
<form action="/displayClientService" method="post">
    Enter Client Id: <input type="text" name="client-id" list="idList" />
    <datalist id="idList">
        <c:forEach items="${clientIdList1}" var="id">
            <option value="${id}">${id}</option>
        </c:forEach>
    </datalist>
    <br/><br/>
    <button type="submit">Details</button>
    &nbsp; &nbsp; &nbsp;
    <button><a href="/clientServiceInd">Return</a></button>
    <br><br>
</form>
</h3>
</div>
</div>
</div>
</body>
</html>