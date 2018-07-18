<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/cart.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">
<script src="js/main.js"></script>
<title>Cart</title>

<!-- <style type="text/css">
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

.input-group-addon.plus {
	background-image: url(css/plus-symbol.svg);
	background-repeat: no-repeat;
	background-size: 15px 15px;
	border: none;
	width: 20px;
	height: 20px;
	background-color: #fff;
	/* margin: auto; */
	padding-top: 5px;
}

.input-group-addon.minus {
	background-image: url(css/minus-symbol.svg);
	background-repeat: no-repeat;
	background-size: 15px 15px;
	border: none;
	/* width: 20px;*/
	height: 20px;
	background-color: #fff;
}

.quant {
	border: none;
	font-family: 'Raleway';
	font-size: 20px;
	text-align: center;
	width: 20px;
	height: 20px;
	margin-top:15px;
	padding-top: 
}

</style> -->
</head>
<body>
	<%@ include file="NavigationBanner.jsp"%>
	<div class="container">
		<br>
		<br>
		<p>My Cart</p>
		<hr class="custom">
		
		<c:forEach items="${ cartProducts}" var="cartItem">
		<div class="col-lg-7">
		<!-- ---------------------------------------------------------------------------------------- -->
		
		
			<div class="row">
				<div class="col-lg-3">
					<a href="${cartItem.productId}ProductDesc.shop"><img src="${cartItem.productImage}" width="70px"
						height="140px"></a>
					<div class="row">
						<a href="${cartItem.productId}deleteFromCart.shop"><button class="btn">-</button></a>
						<input type="text"class="quant" value="${cartItem.quantity}">
						<a href="${cartItem.productId}addToCart.shop"><button class="btn">+</button></a>
					</div>
				</div>
				<div class="col-lg-3" style="width: 300px;">
					<p>${cartItem.productName}</p>
					<p>Unit price: ${cartItem.unitPrice}</p>
					<p>Total :${cartItem.totalPrice}</p>
					<p>Eligible for free delivery</p>
				</div>
			</div>
			
			<!-- ------------------------------------------------------------------------------------- -->
		</div>
		</c:forEach>
		<div class="col-lg-5 price" style="border-left: 1px solid gray;">
			
			<p>Total Amount</p>
			<p><c:out value="${grandTotal}"/>  </p>
			<a href="orderDetails.shop">
			<button class="btn">Buy</button>
			</a>
		</div>
	</div>
<section id="about">
<div class="footer">
<%@ include file="Footer.jsp"%>
</div></section>
</body>
</html>