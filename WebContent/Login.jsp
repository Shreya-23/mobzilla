<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/home.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">
<script src="js\LoginVal.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>

<body>
	<div class="background"></div>
	<%@ include file="NavigationBanner.jsp"%>
	<div class="smartphone" style="background-color: #FFF">
		<div class="content" style="overflow: scroll;">

			<button class="back" onclick="history.go(-1)"></button>
			<h2>Login</h2>
			<hr class="custom">
			<form name="myform" onsubmit="return myfun()" action="LoginUser.shop"
				method="post">
				<div class="form-group">
					<label for="email">EMAIL ADDRESS<span class="star">*</span></label>
					<input type="email" class="form-control" placeholder="Enter email"
						name="email" id="email_val"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
				</div>
				<div class="form-group">
					<label for="pwd">PASSWORD<span class="star">*</span></label> <input
						type="password" class="form-control" placeholder="Enter password"
						name="password" id="password">
				</div>
				<br>
				<c:if test="${userNotFound!=null}">
					<button class="btnF"
						onclick="window.location.href='forgotPassword.shop'">Forgot
						Password?</button>
				</c:if>
				<br> <br>
				<button type="submit" class="btnL" name="Login">LOGIN</button>

				<br> <br> <br>
			</form>
			Don't have an account?
			<button class="btnJ" onclick="window.location.href='Register.jsp'">Join
				us.</button>
		</div>
	</div>
	<section id="about">
	<div class="footer">
		<br>
		<p>About Us</p>
	</div>
	</section>
</body>
</html>