<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Description</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/home.css">
<script src="js/refresh.js"></script>
<script src="js/bootstrap.min.js"></script>
<style type="text/css">
	.btn{
		background-color: black;
		color:white;
		border-radius:0;
		border:none; 
	}
	.link a:hover{
		color:white;
	}
</style>
</head>
<body>
	<%@ include file="NavigationBanner.jsp"%>
	<div class="container-fluid">

		<div class="col-lg-2">

			<div class="row">
				<img id="phsmall" src="${ProductDesc.productImgUrl}" width="80px"
					height="163px" onclick="expandImage(this);">
			</div>

			<c:forEach items="${Images}" var="image">
				<div class="row">
					<img id="phsmall" src="${image}" width="80px" height="163px"
						onclick="expandImage(this);">
				</div>
			</c:forEach>

		</div>

		<div class="col-lg-4">
			<span onclick="this.parentElement.style.display='none'"
				class="closebtn">&times;</span> <img id="expandedImg"
				style="width: 100%;">
		</div>

		<div class="col-lg-6" style="background-color: white; float: right;">

			<h1>
				<b><c:out value="${ProductDesc.productName}" /></b>
			</h1>

			<table class="table table-hover">

				<tr>
					<td><b>Price:</b></td>
					<td>Rs. <c:out value="${ProductDesc.productPrice}" /></td>
				</tr>
				<tr>
					<td><b>Description:</b></td>
					<td><c:out value="${ProductDesc.productDesc}" /></td>
				</tr>

				<tr>
					<td><b>General:</b></td>
					<td><c:out value="${ProductSpecs.general}" /></td>
				</tr>

				<tr>
					<td><b>Design:</b></td>
					<td><c:out value="${ProductSpecs.design}" /></td>
				</tr>

				<tr>
					<td><b>Display:</b></td>
					<td><c:out value="${ProductSpecs.display}" /></td>
				</tr>

				<tr>
					<td><b>Hardware:</b></td>
					<td><c:out value="${ProductSpecs.hardware}" /></td>
				</tr>

				<tr>
					<td><b>Software:</b></td>
					<td><c:out value="${ProductSpecs.software}" /></td>
				</tr>

				<tr>
					<td><b>Camera:</b></td>
					<td><c:out value="${ProductSpecs.camera}" /></td>
				</tr>

				<tr>
					<td><b>Battery:</b></td>
					<td><c:out value="${ProductDesc.productDesc}" /></td>
				</tr>
				<tr>
					<td><a href="${ProductDesc.productId}addToCart.shop" class="link">
							<button class="btn">ADD TO CART</button>
					</a></td>
				</tr>

			</table>
		</div>
	</div>
<%-- <section id="about">
<div class="footer">
<%@ include file="Footer.jsp"%>
</div></section> --%>
	<script>
		function expandImage(imgs) {
			var expandImg = document.getElementById("expandedImg");
			expandImg.src = imgs.src;
			expandImg.parentElement.style.display = "block";
		}
	</script>
</body>
</html>