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

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/home.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">
<script type="text/javascript" src="js/navigationBanner.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/refresh.js"></script>
</head>


<body>
	<!-- Header NavBar-->
	<div class="header">
		<a href="Index.shop"> <span id="logo"> M<img
				src="homepage-images/smartphone.svg" class="logoiconO">B<img
				src="homepage-images/godzilla.svg" class="logoiconA"
				style="-webkit-transform: scaleX(-1); transform: scaleX(-1);">ILLA
		</span>
		</a>
		<div id="tagline">STALK. RAWR. BUY.</div>
	</div>
	<div id="navbar">
		<a href="allProducts.shop">Home</a>
		<!-- --------------------------------------------------------explore-------------------- -->

		<div class="dropdown" style="float: left;">
			<button class="dropbtn">Explore Products</button>
			<div class="dropdown-content"
				style="float: right; left: 116px; margin-top: 52px;">
				<c:forEach items="${BrandList}" var="brands">
					<a href="${brands.brandId}home.shop">${brands.brandName}</a>
					<br>
				</c:forEach>
			</div>
		</div>
		<%-- <a class="active" href="0/home.shop">${userEmail.email}</a> --%>
		<!-- --------------------------------------------------------explore--------------------- -->
		<a href="aboutUs.shop">About Us</a> <a href="showCart.shop"
			style="float: right;">
			<button id="cart"></button>
		</a>
		<div class="dropdown" style="float: right;">
			<button id="login" class="dropbtn"></button>
			<div class="dropdown-content"
				style="margin-top: 52px; float: left; right: 20px;">
				<c:if test="${userLogin==null}">
					<a href="LoginPage.shop">Login</a>
					<br>
					<a href="Register.jsp">Register</a>
				</c:if>
				<c:if test="${userLogin!=null}">
					<a href="LogoutUser.shop">Logout</a>
				</c:if>

			</div>
		</div>
		<div class="hello" style="float: right; color: white;">
			<a href="profile.shop">${userLogin.email}</a>
		</div>
	</div>
	<script type="text/javascript">
		window.onscroll = function() {
			stickyNavbar()
		};

		var navbar = document.getElementById("navbar");
		var sticky = navbar.offsetTop;

		function stickyNavbar() {
			if (window.pageYOffset >= sticky) {
				navbar.classList.add("sticky")
			} else {
				navbar.classList.remove("sticky");
			}
		}
	</script>

</body>
</html>