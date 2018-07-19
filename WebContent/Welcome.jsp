<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>Thank You</title>
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">
<style type="text/css">
.btn {
	border-radius: 0;
	background-color: black;
	color: white;
	position: fixed;
	left: 45%;
	top: 53%;
}

body {
	font-family: 'Raleway';
}

.textbg {
	background-color: black;
	color: white;
	z-index: 1;
	/* transform: skewX(-15deg); */
	vertical-align: middle;
	width: 50%;
	position: fixed;
	left: 25%;
	top: 37%;
}

.background {
	position: fixed;
	left: 0;
	right: 0;
	top: 0;
	z-index: -1;
	display: block;
	background-image: url('css/pattern.svg');
	width: 100%;
	height: 100%;
	-webkit-filter: blur(2px);
	-moz-filter: blur(2px);
	-o-filter: blur(2px);
	-ms-filter: blur(2px);
	filter: blur(2px);
}
</style>
</head>
<body>
	<div class="background"></div>
	<center>
		<img src="homepage-images/godzilla.svg" width=200px height=200px>
		<div class="textbg">
			<h1>Welcome To Mobzilla</h1>
			<br>
		</div>
		<button class="btn" onclick="Home.jsp">Shop Now</button>
	</center>
</body>
</html>