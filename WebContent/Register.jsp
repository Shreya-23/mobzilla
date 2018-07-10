<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%@ taglib prefix="spring"
uri="http://www.springframework.org/tags/form" %>
</head>
<body>


<spring:form action="RegisterUser.shop" modelAttribute="personalDetails" method="post">
<b> Enter Personal Details</b>

Enter First Name:<input name="userFirstName"><br>
Enter Last Name:<input name="userlastName"><br>
Enter Email:<input name="userEmail">
Enter Password:<input name="userPass"><br>
Enter Contact Number:<input name="userContact">

<input type="submit" name="Login">


</spring:form>


</body>
</html>