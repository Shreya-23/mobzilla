<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill Details</title>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="js/refresh.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/kendo.all.min.js"></script>

</head>
<body>

	<%@ include file="NavigationBanner.jsp"%>
	<a href="Thankyou.shop">
	<button class="btn btn-primary" onclick="generatePDF()">Save
		as PDF</button></a>
	<div id="formConfirmation">
		<div class="container">
			<center>
				<h1>Order Details</h1>
			</center>
			<hr class="custom">
			<c:set value="${address}" var="addres" />
			<div class="row">
				<div class="col-lg-4">
					<h3>Shipping Details</h3>
					<p>
						Address :
						<c:out value="${addres.addressLine1}" />
						<c:out value="${addres.addressLine2}" />
					</p>
					<p>
						City :
						<c:out value="${addres.city}" />
					</p>
					<p>
						State :
						<c:out value="${addres.state}" />
					</p>
					<p>
						Pin Code :
						<c:out value="${addres.pin}" />
					</p>
				</div>
				<div class="col-lg-4">
					<h3>Order Summary</h3>

					<!-- ---------------------------------------------------------------------------------------- -->
					<c:forEach items="${ cartProducts}" var="cartItem">

						<p>${cartItem.productName}</p>
						<p>Rs. ${cartItem.unitPrice} x ${cartItem.quantity}</p>
						<p>Total :${cartItem.totalPrice}</p>

					</c:forEach>
					<!-- ------------------------------------------------------------------------------------- -->
				</div>
				<div class="col-lg-4" style="border-left: 1px solid gray;">
					<h3>
						Grand Total:
						<c:out value="${grandTotal.total}"></c:out>
					</h3>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		var generatePDF = function() {
			kendo.drawing.drawDOM($("#formConfirmation")).then(function(group) {
				kendo.drawing.pdf.saveAs(group, "Converted PDF.pdf");
			});
		}
	</script>

</body>
</html>