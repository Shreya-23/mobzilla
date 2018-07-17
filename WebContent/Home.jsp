
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">
<script src="js/main.js" type="text/javascript"></script>
<link href="css/home.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
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
				<a class="active" href="0/home.shop"> <c:if
						test="${userLogin==null}">
				user not Login
				</c:if> <c:if test="${userLogin!=null}">
				user login
				</c:if>
					<form>
						<c:forEach items="${BrandList}" var="brands">
							<label class="checkbox"><c:out
									value="${brands.brandName}" /><input type="checkbox">
								<span class="checkmark"></span></label>
						</c:forEach>
						<div class="vl"></div>
					</form>
		</div>
		<div class="catalog">


			<div class="row">
				<!-- ------------------------------------------------ -->


				<c:forEach items="${ProductList}" var="product">

					<div class="col-lg-4">
						<div class="nameprice">
							<p>${product.productName}</p>
							<p>${product.productPrice}</p>

							<a href="${product.productId}addToCart.shop"><button>ADD</button></a>
						</div>
						<a href="${product.productId}ProductDesc.shop"><img
							src="${product.productImgUrl }" class="phimg" alt="oppoF7"
							style="width: 150px; height: 306px;"></a>
					</div>


					<%-- <div class="col-lg-4">
					<div class="nameprice">
						<p>Name: ${product.productName}</p>
						<p>Price: ${product.productPrice}</p>
						<a href="/project1/id=${product.productId}/ProductDesc.shop">
						<img src="${product.productImgUrl }" alt="${product.productName}">
						</a>
						<button id="blcart"></button>
					</div>
				</div> --%>

				</c:forEach>
				<!-- ------------------------------------------------------- -->
			</div>
		</div>
	</div>




	<%-- <div id="allproducts">
		<ul>
			<c:forEach items="${ProductList}" var="product">
				<li>
					<div class="prod">


						<a href="/project1/id=${product.productId}/ProductDesc.shop">
							<img class="img-responsive" src="${product.productImgUrl }">
						</a>
						<p>
							<b>${product.productBrand}</b>
						</p>
						<p>${product.productName}</p>
						<p>Price ${product.productPrice}</p>

						<form method="get" action="${product.productId}/addToCart.shop">
							<input type="submit" name="submit" value="ADD TO CART" />
						</form>

						<a href="/project1/${product.productId}/addToCart.shop">
							<button>ADD TO CART</button>
						</a>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div> --%>

</body>
</html>