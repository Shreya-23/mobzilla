
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">
<script src="js/main.js" type="text/javascript"></script>
<link href="css/home.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="js/refresh.js"></script>
<style type="text/css">
.catalog .col-lg-4 button {
	background-color: black;
	color: white;
	border-radius: 0;
	border: none; width : 100px;
	height: 40px;
	text-decoration: none;
	width: 150px;
}

.nameprice a {
	text-decoration: none;
}
</style>
</head>
<body>

	<%@ include file="NavigationBanner.jsp"%>

	<div class="container-fluid">
		<div class="filter">
			<p style="text-align: center; margin-top: 10px;">FILTER
			<p>
			<hr class="custom">
			<p>Filter by brands
			<p>
			<form>
				<c:forEach items="${BrandList}" var="brands">
					<label class="checkbox"><c:out value="${brands.brandName}" /><input
						type="checkbox"> <span class="checkmark"></span></label>
				</c:forEach>
				<div class="vl"></div>
			</form>
		</div>
		<div class="catalog">


			<div class="row">
				<!-- ------------------------------------------------ -->
				<c:forEach items="${ProductList}" var="product">

					<div class="col-lg-4"
						style="margin-left: 80px; margin-bottom: 70px;">
						<center>
							<a href="${product.productId}ProductDesc.shop"><img
								src="${product.productImgUrl }" class="phimg" alt="oppoF7"
								style="width: 150px; height: 306px;"></a>

							<div class="nameprice">
								<p>${product.productName}</p>
								<p>Rs. ${product.productPrice}</p>
								<a href="${product.productId}addToCart.shop"><button>ADD
										TO CART</button></a>
							</div>
						</center>
					</div>
				</c:forEach>
				<!-- ------------------------------------------------------- -->
			</div>
		</div>
	</div>

</body>
</html>