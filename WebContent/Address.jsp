<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<%@ taglib prefix="spring"
uri="http://www.springframework.org/tags/form" %>
<body>

<spring:form action="AddAddress.shop" modelAttribute="addressDetails" method="get">
<b> Enter Address Details</b>

Address Line 1:<input name="addressLine1"><br>
Address Line 2:<input name="addressLine2"><br>
City:<input name="city">
State:<input name="state"><br>
Pin Code:<input name="pin">

<input type="submit" name="Login">
<br>


</spring:form>


</body>
</html>