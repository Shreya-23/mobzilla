<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<script type="text/javascript" src="js/main.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<style type="text/css">
	body{background-color: white;}
</style>

</head>

<body>

	<!-- Header NavBar-->
	<div class="header">
		<div id="logo">
			M<img src="homepage-images/smartphone.svg" class="logoiconO">B<img
				src="homepage-images/godzilla.svg" class="logoiconA" style="-webkit-transform: scaleX(-1);
    transform: scaleX(-1);">ILLA
		</div>
		<div id="tagline">STALK. RAWR. BUY.</div>
	</div>

	<div id="navbar">
		<a class="active" href="javascript:void(0)">Home</a>
		<div class="dropdown" style="float: left;">
			<button class="dropbtn">Explore Products</button>
			<div class="dropdown-content" style="margin-top: 52px; ">
				<a href="#">OPPO</a>
				<a href="#">MI</a>
				<a href="#">OPPO</a>
				<a href="#">MI</a>
			</div>
		</div>
		<a href="#about">About Us</a>

		<button id="cart"></button>

		<div class="dropdown" style="float: right;">
			<button id="login" class="dropbtn"></button>
			<div class="dropdown-content" style="margin-top: 52px; float: left; right: 20px;">
				<a href="LoginPage.shop">Login</a> <a href="Register.jsp">Register</a>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		window.onscroll = function() {
			myFunction()
		};

		var navbar = document.getElementById("navbar");
		var sticky = navbar.offsetTop;

		function myFunction() {
			if (window.pageYOffset >= sticky) {
				navbar.classList.add("sticky")
			} else {
				navbar.classList.remove("sticky");
			}
		}
	</script>
</body>
</html>