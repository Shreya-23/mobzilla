<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">

<title>Order Details</title>

</head>
<body>
	<%@ include file="NavigationBanner.jsp"%>
	<div class="container">
		<center>
			<h1>Order Details</h1>
		</center>
		<hr class="custom">
		<c:set value="${address}" var="addres" />
		<div class="row">
			<div class="col-lg-4">
				<h3>Shipping Details</h3>
				<p>
					Address :
					<c:out value="${addres.addressLine1}" />
					<c:out value="${addres.addressLine2}" />
				</p>
				<p>
					City :
					<c:out value="${addres.city}" />
				</p>
				<p>
					State :
					<c:out value="${addres.state}" />
				</p>
				<p>
					Pin Code :
					<c:out value="${addres.pin}" />
				</p>
			</div>
			<div class="col-lg-4">
				<h3>Order Summary</h3>
				
				<!-- ---------------------------------------------------------------------------------------- -->
				<c:forEach items="${ cartProducts}" var="cartItem">

					<p>${cartItem.productName}</p>
					<p>Rs. ${cartItem.unitPrice} x ${cartItem.quantity}</p>
					<p>Total :${cartItem.totalPrice}</p>

				</c:forEach>
				<!-- ------------------------------------------------------------------------------------- -->
			</div>
			<div class="col-lg-4" style="border-left: 1px solid gray;">
				<h3>
					Grand Total:
					<c:out value="${grandTotal.total}"></c:out>
				</h3>
				<hr>
				<a href="payment.shop">
					<button class="btn">DEBIT CARD PAYMENT</button>
				</a> <a href="order.shop">
					<button class="btn">CASH ON DELIVERY</button>
				</a>
			</div>
		</div>
	</div>
</body>
</html>