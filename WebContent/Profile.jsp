<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<%@ include file="NavigationBanner.jsp"%>

	
	<h2>Profile</h2>
	<hr class="custom">
	<div class="row">
	<div class="col-lg-6">
		<p>FIRST NAME: ${user.userFirstName}</p>
		<p>LAST NAME:${user.userLastName}</p>
		<p>EMAIL:${user.userEmail}</p>
		<p>PHONE NUMBER:${user.userContact}</p>
	</div>
	<div class="col-lg-6">
		<h3>SHIPPING ADDRESS</h3>
		<p>ADDRESS LINE 1: ${address.addressLine1}</p>
		<p>ADDRESS LINE 2: ${address.addressLine1}</p>
		<p>CITY: ${address.city}</p>
		<p>STATE: ${address.state}</p>
		<p>PIN CODE: ${address.addressLine1}</p>
	</div>
	</div>
	<div class="row" style="margin-left: 10px;">
		<h3>PAST ORDERS</h3>
		<table>
			<tr>
				<th>PRODUCT NAME</th>
				<th>QUANTITY</th>
				<th>ORDER DATE</th>
				<th>UNIT PRICE</th>
				<th>TOTAL AMOUNT</th>
			</tr>
			<c:forEach items="${orders}" var="order">
			<tr>
				<td> ${order.productName}</td>
				<td>${order.quantity}</td>
				<td>${order.date}</td>
				<td>${order.productPrice}</td>
				<td>${order.totalPrice}</td>
			</tr>
			</c:forEach>
		</table>

	</div>
</body>
</html>