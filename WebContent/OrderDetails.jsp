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
<script src="js/main.js"></script>

<title>Insert title here</title>

<style type="text/css">
.container {
	max-width: 1200px;
}

.row {
	max-height: 190px;
	max-width: 900px;
}

.row .plmin {
	max-height: 25px;
	max-width: 83px;
	margin-left: 0px;
	margin-top: 10px;
	padding-top: 10px;
	padding-left: 2px;
	background-color: #669999;
}

.plus {
	background-image: url(css/plus-symbol.svg);
	background-repeat: no-repeat;
	background-size: 15px 15px;
	border: none;
	width: 20px;
	height: 20px;
	background-color: white;
	margin: auto;
}

.minus {
	background-image: url(css/minus-symbol.svg);
	background-repeat: no-repeat;
	background-size: 15px 15px;
	border: none;
	width: 20px;
	height: 20px;
	background-color: white;
	margin: auto;
}

.quant {
	border: none;
	font-family: 'Raleway';
	font-size: 20px;
	text-align: center;
	width: 20px;
	height: 30px;
	margin: auto;
}
</style>


</head>
<body>
	<%@ include file="NavigationBanner.jsp"%>
	<div class="container">
		<br> <br>
		<h1>Order Details</h1>
		<hr class="custom">

		<c:set value="${address}" var="addres" />
		<div class="row">
			<div class="col-lg-4">
				<h3>Shipping Details</h3>
				<br>
				<p>Address :</p>
				<p>
					<c:out value="${addres.addressLine1}" />
				</p>
				<p>
					<c:out value="${addres.addressLine2}" />
				</p>
				<p>City :</p>
				<p>
					<c:out value="${addres.city}" />
				</p>
				<p>State :</p>
				<p>
					<c:out value="${addres.state}" />
				</p>
				<p>Pin Code :</p>
				<p>
					<c:out value="${addres.pin}" />
				</p>
			</div>

			<div class="col-lg-4" style="width: 300px;">
				<h3>Order Summary</h3>
				<br>

				<p>Order Id :</p>
				<p>Product Name :</p>
			</div>

			<div class="col-lg-4" style="border-left: 1px solid gray;">
				<div class="radio">
					<label><input type="radio" name="pay" value="cod">Cash On Delivery</label>
					<label><input type="radio" name="pay" value="debit">Debit Card</label>
				</div>
				<!-- <div class="radio">
					<label><input type="radio" name="dbt" value="debit">Debit Card</label>
				</div> -->

				<h3>
					Total Amount :
					<c:out value="${grandTotal}"></c:out>
				</h3>
				<hr>
				<a href="payment.shop">
					<button class="btn">DEBIT CARD PAYMENT</button>
				</a>
					<a href="order.shop">
					<button class="btn">CASH ON DELIVERY</button>
				</a>
			</div>

		</div>
	</div>
<section id="about">
<div class="footer">
<%@ include file="Footer.jsp"%>
</div></section>

</body>
</html>