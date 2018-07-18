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
</head>

<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<body>
<div class="background"></div>
	<!-- 
	<div class="border"> -->
	<%@ include file="NavigationBanner.jsp"%>
	<div class="smartphone" style="background-color: #FFF">
		<div class="content" style="overflow: scroll;">
			<button class="back" onclick="history.go(-1)"></button>
			<h2>Personal Details</h2>
			<hr class="custom">
			<spring:form name="myform" onsubmit="return addressVal()"
				action="AddAddress.shop" modelAttribute="addressDetails"
				method="get">
				<script src="js\AddressVal.js"></script>
				<div class="form-group">
					<label for="add1">ADDRESS LINE 1<span class="star">*</span></label>
					<input type="text" class="form-control" name="addressLine1"
						id="addline1" pattern="^[a-z|A-Z|0-9|-/&|\s]*$">
				</div>
				<div class="form-group">
					<label for="add2">ADDRESS LINE 2<span class="star">*</span></label>
					<input type="text" class="form-control" name="addressLine2">
				</div>
				<div class="form-group">
					<label for="city">CITY<span class="star">*</span></label> <input
						type="text" class="form-control" name="city" id="cityy"
						pattern="[A-Za-z]{1,50}" title="ACCEPT CHARACTERS ONLY">
				</div>
				<div class="form-group">
					<label for="state">STATE<span class="star">*</span></label> <input
						type="text" class="form-control" name="state" id="statee"
						pattern="[.&+a-zA-Z\s]*$">
				</div>
				<div class="form-group">
					<label for="pincode">PIN CODE<span class="star">*</span></label> <input
						type="text" class="form-control" name="pin" id="pin"
						pattern="[1-9]{1}[0-9]{5}" title=" 6 DIGIT PIN ONLY">
				</div>
				<button type="submit" class="btnN" name="next">SUBMIT</button>
			</spring:form>
		</div>
	</div>
</body>
</html>