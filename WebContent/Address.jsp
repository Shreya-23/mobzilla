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
<style type="text/css">
.background {
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

<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<body class="bgphone">


	<%-- 	<spring:form action="AddAddress.shop" modelAttribute="addressDetails" method="get">
<b> Enter Address Details</b>

Address Line 1:<input name="addressLine1"><br>
Address Line 2:<input name="addressLine2"><br>
City:<input name="city">
State:<input name="state"><br>
Pin Code:<input name="pin">

<input type="submit" name="Login">
<br>


</spring:form>
 --%>
	<!-- 
	<div class="border"> -->
	<%@ include file="NavigationBanner.jsp"%>
	<div class="smartphone" style="background-color: #FFF">
		<div class="content" style="overflow: scroll; height: 480px;">
			<button class="back" onclick="history.go(-1)"></button>
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