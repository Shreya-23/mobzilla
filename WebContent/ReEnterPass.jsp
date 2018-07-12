<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/home.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">
<script src="main.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%-- <spring:form action="ChangePass.shop" method="post" modelAttribute="userEmail" >

new password:
<input name="password1">
re-enter password:
<input name="password2">
<input type="submit">
</spring:form> --%>

	<div class="container">
		<!-- <button class="back" onclick="goBack()"></button> -->
		<h2>Enter New Password</h2>
		<hr class="custom">
		<spring:form action="ChangePass.shop" method="post"
			modelAttribute="userEmail">
			<div class="form-group">
				<label for="pass">NEW PASSWORD<span class="star">*</span></label> <input
					type="password" class="form-control" name="password1">
			</div>
			<div class="form-group">
				<label for="pass">RE-ENTER PASSWORD<span class="star">*</span></label>
				<input type="password" class="form-control" name="password2">
			</div>
			<c:if test="${doPassMatch!=null}">
				<b>Both passwords does not match</b>
				</c:if>
			<br>
			<br>
			<button type="submit" class="btnL">Submit</button>
			<br>
			<br>
			<br>
		</spring:form>
	</div>

</body>
</html>