<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>  
<script type="text/javascript" src="js/refresh.js"></script>
 <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Optional theme -->
   <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"> -->
    <script src="js/jquery-3.1.0.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/kendo.all.min.js"></script> 

<style>
.container {
	max-width: 1200px;
}

.row {
	max-height: 190px;
	max-width: 900px;
}

.row .plmin {
	max-height: 25px;
	max-width: 83px;
	margin-left: 0px;
	margin-top: 10px;
	padding-top: 10px;
	padding-left: 2px;
	background-color: #669999;
}
 


.plus {
	background-image: url(css/plus-symbol.svg);
	background-repeat: no-repeat;
	background-size: 15px 15px;
	border: none;
	width: 20px;
	height: 20px;
	background-color: white;
	margin: auto;
}

.minus {
	background-image: url(css/minus-symbol.svg);
	background-repeat: no-repeat;
	background-size: 15px 15px;
	border: none;
	width: 20px;
	height: 20px;
	background-color: white;
	margin: auto;
}

.quant {
	border: none;
	font-family: 'Raleway';
	font-size: 20px;
	text-align: center;
	width: 20px;
	height: 30px;
	margin: auto;
}
</style>




</head>
<body>

<%@ include file="NavigationBanner.jsp"%>
	
<br>
<br>
<br>
<a href="Thankyou.shop">
<button class="btn btn-primary" onclick="generatePDF()">
       Save as PDF</button>
</a>
<br>
<div id="formConfirmation">
	<div class="container">
		<br>
		<br>
		<h1>Order Details</h1>
		<hr class="custom">

		
			<c:set value="${address}" var="addres" />
		<div class="row">
			<div class="col-lg-4">
				<h3>Shipping Details</h3>
				<br>
				<p>Address :</p>
				<p>
					<c:out value="${addres.addressLine1}" />
				</p>
				<p>
					<c:out value="${addres.addressLine2}" />
				</p>
				<p>City :</p>
				<p>
					<c:out value="${addres.city}" />
				</p>
				<p>State :</p>
				<p>
					<c:out value="${addres.state}" />
				</p>
				<p>Pin Code :</p>
				<p>
					<c:out value="${addres.pin}" />
				</p>
			</div>
                                                                                
				<div class="col-lg-4" style="width: 300px;"><h3>Order Summary</h3><br>
					
					<c:forEach items="${ cartProducts}" var="cartItem">
		<div class="col-lg-7">
		
		
		
			<div class="row">
				
				<div class="col-lg-3" style="width: 300px;">
					<p>${cartItem.productName}</p>
					<p>Rs. ${cartItem.unitPrice} x ${cartItem.quantity}</p>
					<p>Total :${cartItem.totalPrice}</p>
					
				</div>
			</div>
			
			
		</div>
		</c:forEach>
					
		<div class="col-lg-4" style="border-left: 1px solid gray ;">
			
			<h3>Grand Total Amount : </h3>
			<c:out value="${grandTotal.total}"></c:out>
			<hr>
                                        
                                        </div>
                                        
		</div>
	</div>

</div>
<script>
                var generatePDF = function () {
                    kendo.drawing.drawDOM($("#formConfirmation")).then(function (group) {
                        kendo.drawing.pdf.saveAs(group, "Converted PDF.pdf");
                    });
                }
            </script>




</body>
</html>