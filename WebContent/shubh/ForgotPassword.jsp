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
<script src="js/main.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password.</title>
<style type="text/css">
	.background{
	 position: fixed;
  left: 0;
  right: 0;
  z-index: -1;
  display: block;
  background-image: url('css/pattern.svg');
  width: 100%;
  height: 100%;
  -webkit-filter: blur(2px);
  -moz-filter: blur(2px);
  -o-filter: blur(2px);
  -ms-filter: blur(2px);
  filter: blur(2px);
	}
	</style>
</head>
<body>
<%@ include file="NavigationBanner.jsp"%>
	<div class="smartphone" style="background-color:#FFF">
		<div class="content" style="overflow:scroll; height:480px;">

		<button class="back" onclick="history.go(-1)"></button>
		<h2>Change Password</h2>
		<hr class="custom">
		<spring:form action="newPass.shop" method="post">
			<div class="form-group">
				<label for="email">EMAIL ADDRESS<span class="star">*</span></label>
				<input type="email" class="form-control" name="userEmail">
			</div>
			<div class="form-group">
				<label for="phno">PHONE NUMBER<span class="star">*</span></label> <input
					type="text" class="form-control" name="userContact">
			</div>
			<c:if test="${isPhoneCorrect!=null}">
				<b>Email and Phone number doesnot match</b>
			</c:if>
			<br>
			<br>
			<button type="submit" class="btnL">Submit</button>
			<br>
			<br>
			<br>
		</spring:form>
	</div>
	</div>
</body>
</html>