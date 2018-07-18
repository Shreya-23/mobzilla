<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Description</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/main.css">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<!-- <style>
body {
	font-family: 'Raleway';
}

table {
	border-collapse: separate;
	border-spacing: 10px 10px;
	font-family: 'Raleway';
}

h1 {
	font-family: 'Raleway';
}

.container-fluid .col-lg-2 .row {
	margin-bottom: 10px;
	width: 130px;
	border-bottom: 1px solid #d9d9d9;
	border-right: 1px solid #d9d9d9;
}

/* Style the images inside the grid */
.container-fluid .col-lg-2 .row #phsmall {
	opacity: 0.8;
	cursor: pointer;
	margin-top: 20px;
	margin-bottom: 20px;
}

#phsmall {
	opacity: 0.8;
	cursor: pointer;
}

.container-fluid .col-lg-2 .row #phsmall:hover {
	opacity: 1;
}

/* Clear floats after the columns */
.container-fluid .row:after {
	content: "";
	display: table;
	clear: both;
}

/* The expanding image container */
.container-fluid .col-lg-4 {
	position: relative;
	display: block;
	width: 300px;
	margin: auto;
	margin-top: 30px;
}

/* Closable button inside the expanded image */
.container-fluid .col-lg-4 .closebtn {
	position: absolute;
	top: 10px;
	right: -50px;
	color: black;
	font-size: 35px;
	cursor: pointer;
}

.col-lg-6 {
	float: right;
} */
</style> -->
<body>
	<%@ include file="NavigationBanner.jsp"%>
	<div class="container-fluid">

		<div class="col-lg-2">
			
			<div class="row">
				<img id="phsmall" src="${ProductDesc.productImgUrl}" width="80px"
					height="163px" onclick="myFunction(this);">
			</div>
			
			<c:forEach items="${Images}" var="image">
			<div class="row">
				<img id="phsmall" src="${image}" width="80px"
					height="163px" onclick="myFunction(this);">
			</div>
			</c:forEach>
			
			
			
		<!-- 	<div class="row">
				<img id="phsmall" src="css/op6 back.png" width="80px" height="163px"
					onclick="myFunction(this);">
			</div>
			<div class="row">
				<img id="phsmall" src="css/op6 side.jpg" width="80px" height="163px"
					onclick="myFunction(this);">
			</div> -->
		</div>

		<div class="col-lg-4">
			<span onclick="this.parentElement.style.display='none'"
				class="closebtn">&times;</span> <img id="expandedImg"
				style="width: 100%;">
		</div>

		<div class="col-lg-6" style="background-color: white; float: right;">

		<h1><b>OnePLus 6 (Black, 64 GB) (6 GB RAM)</b></h1>


			<table class="table table-hover">

				<tr>
					<td><b>Price:</b></td>
					<td>Rs. <c:out value="${ProductDesc.productPrice}"/></td>
				</tr>
				<tr>
					<td><b>Description:</b></td>
					<td><c:out value="${ProductDesc.productDesc}"/></td>
				</tr>
				
				<tr>
					<td><b>General:</b></td>
					<td><c:out value="${ProductSpecs.general}"/></td>
				</tr>
				
				<tr>
					<td><b>Design:</b></td>
					<td><c:out value="${ProductSpecs.design}"/></td>
				</tr>
				
				<tr>
					<td><b>Display:</b></td>
					<td><c:out value="${ProductSpecs.display}"/></td>
				</tr>
				
				<tr>
					<td><b>Hardware:</b></td>
					<td><c:out value="${ProductSpecs.hardware}"/></td>
				</tr>
				
				<tr>
					<td><b>Software:</b></td>
					<td><c:out value="${ProductSpecs.software}"/></td>
				</tr>
				
				<tr>
					<td><b>Camera:</b></td>
					<td><c:out value="${ProductSpecs.camera}"/></td>
				</tr>
				
				<tr>
					<td><b>Battery:</b></td>
					<td><c:out value="${ProductDesc.productDesc}"/></td>
				</tr>
				<tr>
					<td>   
						<a href="${ProductDesc.productId}addToCart.shop">
			<button class="btn">ADD TO CART</button>
			</a>
					</td>
				</tr>
				
				
				
			</table>
		</div>
	</div>

	<script>
		function myFunction(imgs) {
			var expandImg = document.getElementById("expandedImg");
			expandImg.src = imgs.src;
			expandImg.parentElement.style.display = "block";
		}
	</script>
</body>
</html>