<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MOBZILLA</title>
</head>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/navigationBanner.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway" rel="stylesheet">
<script type="text/javascript" src="js/navigationBanner.js"></script> 
<script src="js/bootstrap.min.js"></script>


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
		<a class="active" href="javascript:void(0)">Home</a> <a
			href="javascript:void(0)">Explore Products</a> <a href="#about">About
			Us</a>

		<button id="cart"></button>

		<div class="dropdown">
			<button id="login" class="dropbtn"></button>
			<div class="dropdown-content">
				<a href="#">Login</a> <a href="#">Register</a>
			</div>
		</div>
	</div>


</body>
</html>