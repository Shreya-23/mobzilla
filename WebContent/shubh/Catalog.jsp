<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/home.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">
<script src="js/main.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
				<label class="checkbox">One <input type="checkbox">
					<span class="checkmark"></span>
				</label> <label class="checkbox">Two <input type="checkbox">
					<span class="checkmark"></span>
				</label> <label class="checkbox">Three <input type="checkbox">
					<span class="checkmark"></span>
				</label>
				<div class="vl"></div>
			</form>

		</div>
		<div class="catalog">
			<div class="row">
				<div class="col-lg-4">
					<div class="nameprice">
						<p>Name: OPPO f7</p>
						<p>Price: 20000</p>
						<!-- <img src="css/oppoF7.png" alt="oppoF7"> -->
						<button id="blcart"></button>
					</div>
				</div>
				<div class="col-lg-4">.col-sm-4</div>
				<div class="col-lg-4">.col-sm-4</div>
			</div>
		</div>
	</div>
</body>
</html>