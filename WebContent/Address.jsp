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
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="js/refresh.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/addval.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style type="text/css">
	
</style>
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
					<label for="state">STATE<span class="star">*<br></span></label>
					 <select
						name="List" class="state">
						<option  value="Select State">Select State</option>
						<option value="Andaman and Nicobar Islands">Andaman and
							Nicobar Islands</option>
						<option value="Andhra Pradesh">Andhra Pradesh</option>
						<option value="Arunachal Pradesh">Arunachal Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chandigarh">Chandigarh</option>
						<option value="Chhattisgarh">Chhattisgarh</option>
						<option value="Dadra and Nagar Haveli">Dadra and Nagar
							Haveli</option>
						<option value="Daman and Diu">Daman and Diu</option>
						<option value="Delhi">Delhi</option>
						<option value="Goa">Goa</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Haryana">Haryana</option>
						<option value="Himachal Pradesh">Himachal Pradesh</option>
						<option value="Jammu and Kashmir">Jammu and Kashmir</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerala">Kerala</option>
						<option value="Lakshadweep">Lakshadweep</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Manipur">Manipur</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Mizoram">Mizoram</option>
						<option value="Nagaland">Nagaland</option>
						<option value="Orissa">Orissa</option>
						<option value="Pondicherry">Pondicherry</option>
						<option value="Punjab">Punjab</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim</option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Tripura">Tripura</option>
						<option value="Uttaranchal">Uttaranchal</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="West Bengal">West Bengal</option>
					</select>
				</div>
				<div class="form-group">
					<label for="pincode">PIN CODE<span class="star">*</span></label> <input
						type="text" class="form-control" name="pin" id="pincode"
						pattern="[1-9]{1}[0-9]{5}" title=" 6 DIGIT PIN ONLY">
				</div>
				<button type="submit" class="btnN" name="next">SUBMIT</button>
			</spring:form>
		</div>
	</div>
	<section id="about">
	<div class="footer">
		<%@ include file="Footer.jsp"%>
	</div>
	</section>
</body>
</html>