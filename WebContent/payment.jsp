<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/payval.js"></script>
<title>Payment</title>

<style>
body {
	font-family: Arial;
	font-size: 17px;
	padding: 8px;
}

* {
	box-sizing: border-box;
}

.row {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	margin: 0 -16px;
}

.col-50 {
	-ms-flex: 50%; /* IE10 */
	flex: 50%;
}

.col-75 {
	-ms-flex: 75%; /* IE10 */
	flex: 75%;
}

.col-50, .col-75 {
	padding: 0 16px;
}

.container {
	background-color: #f2f2f2;
	padding: 5px 20px 15px 20px;
	border: 1px solid lightgrey;
	border-radius: 3px;
}

input[type=text] {
	width: 60%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}

.btn {
	background-color: #000;
	color: white;
	padding: 12px;
	margin: 10px 0;
	border: none;
	width: 60%;
	border-radius: 3px;
	cursor: pointer;
	font-size: 17px;
}

.btn:hover {
	background-color: grey;
}

a {
	color: #2196F3;
}

hr {
	border: 1px solid lightgrey;
}

span.price {
	float: right;
	color: grey;
}
/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
	.row {
		flex-direction: column-reverse;
	}
}
</style>

</head>
<body>

	<div class="row">
		<div class="col-75">
			<div class="container">
				<form name="myform" onsubmit="return paymentVal()"
					action="order.shop">
					<script src="js\PaymentVal.js"></script>
					<div class="col-50">
						<h3>Payment</h3>
						<label for="fname">Accepted Cards</label>
						<div class="icon-container">
							<img src="css/mastercard.svg" style="width: 40px; height: 40px;">
							<img src="css/visa.svg" style="width: 40px; height: 40px;">
						</div>

						<label for="cname">Name on Card</label> <input type="text"
							id="cname" name="cardname" placeholder="Enter Name on Card"
							pattern="[A-Za-z\s]{1,50}" title="ACCEPT ONLY CHARACTERS">
						<label for="ccnum">Card Number</label> <input type="text"
							id="ccnum" name="cardnumber"
							placeholder="1111-2222-3333-4444 - only 16 digit"
							pattern="((4\d{3})|(5[1-5]\d{2}))( |)?\d{4}(\4\d{4}){2}">
						<label for="expdate">Exp Date</label> <input type="month"
							id="expmonth" name="expdate" min="2018-07" max="2040-12" placeholder="Expiry Date"><br>

						<br> <label for="cvv">CVV</label> <input type="password" id="cvv"
							name="cvv" placeholder="CVV" pattern="[0-9]{1}[0-9]{2}"
							title="3 digits CVV only">
					</div>
					<center>
			<input type="submit" value="Submit" class="btn">
		</center>
					
				</form>
			</div>
		</div>

	
	</div>



</body>
</html>