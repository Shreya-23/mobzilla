<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>Thank You</title>
<link
	href="https://fonts.googleapis.com/css?family=Julius+Sans+One|Monoton|Libre+Barcode+128+Text|Permanent+Marker|Philosopher|Raleway"
	rel="stylesheet">
<style type="text/css">
.btn {
	border-radius: 0;
	background-color: black;
	color: white;
	font-family: 'Raleway';
	position: fixed;
	left: 45%;
	top:75%;
}

h1 {
	/* font-family: 'Permanent Marker'; */
	font-family: 'Libre Barcode 128 Text', cursive;
	margin-top: 70px;
	font-size: 64px;
	/* font-family: 'Julius Sans One', sans-serif; */
}

.textbg {
	border:4px solid black;
	/* background-color: white; */
	background-image: url(css/paper.jpg);
	color: black;
	z-index: 1;
	/* transform: skewX(-15deg); */
	vertical-align: middle;
	width: 60%;
	height: 50%;
	position: fixed;
	left: 20%;
	top: 20%;
}

.background {
	position: fixed;
	left: 0;
	right: 0;
	top: 0;
	display: block;
	background-image: url('css/pattern.svg');
	width: 100%;
	height: 100%;
	-webkit-filter: blur(2px);
	-moz-filter: blur(2px);
	-o-filter: blur(2px);
	-ms-filter: blur(2px);
	filter: blur(2px);
	z-index: -1;
}
</style>
</head>
<body>
	<div class="background"></div>
	<center>
		<div class="textbg">
			<h1>thank you for<br> shopping with us.</h1>
			<br>
			</div>
			<a href="allProducts.shop">
			<button class="btn btn-dark">Continue
				Shopping</button></a>
		
	</center>
</body>
</html>