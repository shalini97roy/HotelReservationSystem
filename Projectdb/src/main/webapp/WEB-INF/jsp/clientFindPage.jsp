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
<h3>
<form action="client-find" method="post">
Enter Client Id:<input type="text" name="client-id" list="idList"/>
<datalist id="idList">
<c:forEach items="${clientIdList}" var="id">
<option value="${id}">${id}</option>
</c:forEach>


</datalist>
<br/><br/>
<button type="submit" value="details" name="details">Details</button>
&nbsp; &nbsp; &nbsp;
<button type="submit" value="update" name="update">Update</button>
&nbsp; &nbsp; &nbsp;
 <button><a href="/clientInd">Return</a></button>

</form>
</h3>

</div>
</body>
</html>