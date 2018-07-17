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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>

<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
</head>
<body class="bgphone">


	<%-- <spring:form action="RegisterUser.shop" modelAttribute="personalDetails" method="post">
 <b> Enter Personal Details</b>

Enter First Name:<input name="userFirstName"><br>
Enter Last Name:<input name="userlastName"><br>
Enter Email:<input name="userEmail">
Enter Password:<input name="userPass"><br>
Enter Contact Number:<input name="userContact">

<input type="submit" name="Login">


</spring:form> --%>

	<!-- <div class="border"> -->
	<div class="smartphone" style="background-color:#FFF">
		<div class="content" style="overflow:scroll; height:480px;">
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
					name="userEmail" id="email_val"  pattern="[a-z0-9._]+@[a-z0-9.-]+\.[a-z]{2,3}$">
			</div>
			<div class="form-group">
				<label for="pwd">PASSWORD<span class="star">*</span></label> <input
					type="password"  id="password"  class="form-control" placeholder="Enter password"
					name="userPass">
			</div>
			<div class="form-group">
				<label for="contact">PHONE NUMBER<span class="star">*</span></label>
				<input type="text" class="form-control" placeholder="Enter password" id="mobilenumber"
					name="userContact" pattern="[6-9]{1}[0-9]{9}" title="10-digit MOBILE NUMBER ONLY">
			</div>
			<button type="submit" class="btnN" name="next">NEXT</button>
		</spring:form>
	</div>
	</div>
</body>
</html>