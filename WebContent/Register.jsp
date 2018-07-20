<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/home.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/RegVal.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="js/refresh.js"></script>
<title>Registration</title>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
</head>
<body>
	<div class="background"></div>
	<%@ include file="NavigationBanner.jsp"%>
	<div class="smartphone" style="background-color:#FFF">
		<div class="content" style="overflow:scroll;">
		<button class="back" onclick="history.go(-1)"></button>
		<h2>Register</h2>
		<hr class="custom">
		<spring:form name="myform" onsubmit="return myfun()" action="RegisterUser.shop"
			modelAttribute="personalDetails" method="post">
			<script src="js\RegistrationVal.js"></script>
			<div class="form-group">
				<label for="fname">FIRST NAME<span class="star">*</span></label> <input
					type="text" class="form-control" placeholder="Enter First Name"
					name="userFirstName" id="fn_val" pattern="[A-Za-z]{1,50}" title="ACCEPT CHARACTERS ONLY">
			</div>
			<div class="form-group">
				<label for="lname">LAST NAME<span class="star">*</span></label> <input
					type="text" class="form-control" placeholder="Enter Last Name"
					name="userLastName"  id="ln_val" pattern="[A-Za-z\s]{1,50}" title="ACCEPT CHARACTERS ONLY">
			</div>
			<div class="form-group">
				<label for="email">EMAIL<span class="star">*</span></label> <input
					type="email" class="form-control" placeholder="Enter Email"
					name="userEmail" id="email_val"  pattern="[a-z0-9._]+@[a-z.-]+\.[a-z]{2,3}$" title="eg: abc@xyz.com">
			</div>
			<div class="form-group">
				<label for="pwd">PASSWORD<span class="star">*</span></label> <input
					type="password"  id="password"  class="form-control" placeholder="Enter password"
					name="userPass">
			</div>
			<div class="form-group">
				<label for="contact">PHONE NUMBER<span class="star">*</span></label>
				<input type="text" class="form-control" placeholder="Enter phone number" id="mobilenumber"
					name="userContact" pattern="[6-9]{1}[0-9]{9}" title="10-digit MOBILE NUMBER ONLY">
			</div>
			<button type="submit" class="btnN" name="next">NEXT</button>
		</spring:form>
	</div>
	</div>
	<section id="about">
<div class="footer">
<%@ include file="Footer.jsp"%>
</div></section>
</body>
</html>