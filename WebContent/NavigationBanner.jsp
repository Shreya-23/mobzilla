<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	
	<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MOBZILLA</title>
</head>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/home.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">
<script type="text/javascript" src="js/navigationBanner.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.1.0.min.js"></script>



<body>

	<%-- <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="banner">
	<button onclick="window.location.href='${cartProducts.productId}/ProductDesc.shop'">CART</button>

	<div class="col-sm-3 col-md-3 pull-right">
		<form id="search-field-form" class="navbar-form" role="search"
			action="<c:url value="products" />" method="GET">
			<div class="input-group">
				<input id="search-field" type="text" class="form-control"
					placeholder="Search" name="srch-term" id="srch-term">
				<div class="input-group-btn">
					<button id="search-field-btn" class="btn btn-default" type="submit">
						<i>GO</i>
					</button>
				</div>
			</div>
		</form>
	</div>
	<button onclick="window.location.href='LoginPage.shop'">Login</button>
	</nav> --%>

	<!-- Header NavBar-->
	<div class="header">
		<div id="logo">
			M<img src="homepage-images/smartphone.svg" class="logoiconO">BZILL<img
				src="homepage-images/godzilla.svg" class="logoiconA">
		</div>
		<div id="tagline">STALK. RAWR. BUY.</div>
	</div>
	<br>
	<br>

	<div id="navbar">
		<a class="active" href="allProducts.shop">Home</a>
		<!-- --------------------------------------------------------explore-------------------- -->
		
		<div class="dropdown">
			<button class="dropbtn">Explore Products</button>
			<div class="dropdown-content">
			<c:forEach items="${BrandList}" var="brands">
			
			
				<a class="active" href="${brands.brandId}home.shop">${brands.brandName}</a>
			
			
				<%-- <spring:form action="${brands.brandId}home.shop" method="post">
				<button type="submit">${brands.brandName}</button>
				</spring:form> --%>
				
			</c:forEach>
			</div>
		</div>
		<%-- <a class="active" href="0/home.shop">${userEmail.email}</a> --%>
		<!-- --------------------------------------------------------explore--------------------- -->
		<a href="#about">About Us</a>
		<a href="showCart.shop">
		<button id="cart"></button>
		</a>
		<div class="dropdown">
			<button id="login" class="dropbtn"></button>
			<div class="dropdown-content">
				<c:if test="${userLogin==null}">
				<a href="LoginPage.shop">Login</a>
				</c:if>
				<c:if test="${userLogin!=null}">
				<a href="LogoutUser.shop">Logout</a>
				</c:if>
				 <a href="RegisterFrame.jsp">Register</a>
			</div>
		</div>
	</div>


</body>
</html>