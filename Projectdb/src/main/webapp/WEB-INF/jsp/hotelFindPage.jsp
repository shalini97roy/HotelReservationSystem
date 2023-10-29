<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Find Page</title>
</head>
<body>
<div align="center">
<h3>
<form action="hotel-find" method="post">
Enter Hotel Id:<input type="text" name="hotel-id" list="idList"/>
<datalist id="idList">
<c:forEach items="${hotelIdList}" var="id">
<option value="${id}">${id}</option>
</c:forEach>


</datalist>
<br/><br/>
<button type="submit" value="details" name="details">Details</button>
&nbsp; &nbsp; &nbsp;
<button type="submit" value="update" name="update">Update</button>


</form>
</h3>

</div>
</body>
</html>