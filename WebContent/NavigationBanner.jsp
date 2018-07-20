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
<style type="text/css">
/* .header a:hover {
	animation: shake 0.82s cubic-bezier(.36,.07,.19,.97) both;
  transform: translate3d(0, 0, 0);
	animation-iteration-count: infinite;
}

@keyframes shake {
  10%, 90% {
    transform: translate3d(-1px, 0, 0);
  }
  
  20%, 80% {
    transform: translate3d(2px, 0, 0);
  }

  30%, 50%, 70% {
    transform: translate3d(-4px, 0, 0);
  }

  40%, 60% {
    transform: translate3d(4px, 0, 0);
  }
}
 */
/* @keyframes shake {
  0% { transform: translate(1px, 1px) rotate(0deg); }
@keyframes shake{  10% { transform: translate(-1px, -2px) rotate(-1deg); }}
@keyframes shake{  20% { transform: translate(-3px, 0px) rotate(1deg); }}
  @keyframes shake{30% { transform: translate(3px, 2px) rotate(0deg); }}
  @keyframes shake{40% { transform: translate(1px, -1px) rotate(1deg); }}
  @keyframes shake{50% { transform: translate(-1px, 2px) rotate(-1deg); }}
  @keyframes shake{60% { transform: translate(-3px, 1px) rotate(0deg); }}
  @keyframes shake{70% { transform: translate(3px, 1px) rotate(-1deg); }}
  @keyframes shake{80% { transform: translate(-1px, -1px) rotate(1deg); }}
  @keyframes shake{90% { transform: translate(1px, 2px) rotate(0deg); }}
  @keyframes shake{100% { transform: translate(1px, -2px) rotate(-1deg); }}
} */
</style>
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
		<a href="#about">About Us</a> <a href="showCart.shop"
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