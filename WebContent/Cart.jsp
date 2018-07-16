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
<title>Cart</title>

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
 
.col-lg-3 {
	margin: 20px auto;
}

.col-lg-5.price {
	float: right;
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
		<br>
		<br>
		<p>My Cart</p>
		<hr class="custom">

		<div class="col-lg-7">
		<!-- ---------------------------------------------------------------------------------------- -->
		
		<c:forEach items="${ cartProducts}" var="cartItem">
			<div class="row">
				<div class="col-lg-3">
					<a href=""><img src="${cartItem.productImage}" alt="op6" width="70px"
						height="140px"></a>
					<div class="row">
						<button class="btn">add</button>
						<input type="text"class="quant" value="${cartItem.quantity}">
						<button class="btn">remove</button>
					</div>
				</div>
				<div class="col-lg-3" style="width: 300px;">
					<p>${cartItem.productName}</p>
					<p>${cartItem.totalPrice}</p>
					<p>Eligible for free delivery</p>
				</div>
			</div>
			</c:forEach>
			<!-- ------------------------------------------------------------------------------------- -->
		</div>
		<div class="col-lg-5 price" style="border-left: 1px solid gray;">
			<p>Price Details</p>
			<hr>
			<p>Total Amount</p>
			<a href="order.shop">
			<button class="btn">Order</button>
			</a>
		</div>
	</div>

</body>
</html>