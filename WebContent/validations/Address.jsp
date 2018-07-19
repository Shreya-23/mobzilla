<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/addval.js"></script>
<link href="css/home.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.css">
<!-- importing bootstrap file -->
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Registration</title>
</head>
<body class="bgphone">




	<%@ taglib prefix="spring"
		uri="http://www.springframework.org/tags/form"%>



	<%-- 	<spring:form action="AddAddress.shop" modelAttribute="addressDetails" method="get">
<b> Enter Address Details</b>
Address Line 1:<input name="addressLine1"><br>
Address Line 2:<input name="addressLine2"><br>
City:<input name="city">
State:<input name="state"><br>
Pin Code:<input name="pin">
<input type="submit" name="Login">
<br>
</spring:form>
 --%>
	<!-- 
	<div class="border"> -->
	<div class="container">
		<h2>Register</h2>
		<hr class="custom">
		<spring:form name="myform" onsubmit="return addressVal()"
			action="AddAddress.shop" modelAttribute="addressDetails" method="get">
			<script src="js\AddressVal.js"></script>
			<div class="form-group">
		
 

				<label for="add1">ADDRESS LINE 1<span class="star">*</span></label>
				<input type="text" class="form-control" name="addressLine1"
					id="addline1" pattern="^[a-z|A-Z|0-9|-/&|\s]*$"> 
			</div>
			<div class="form-group">
				<label for="add2">ADDRESS LINE 2<span class="star"></span></label> <input
					type="text" class="form-control" name="addressLine2" id="addline2"> 
			</div>
			<div class="form-group">
				<label for="city">CITY<span class="star">*</span></label> <input
					type="text" class="form-control" name="city" id="cityy"
					pattern="[A-Za-z]{1,50}"> 
			</div>
		<!--  	<div class="form-group">
				<label for="state">STATE<span class="star">*</span></label> <input
					type="text" class="form-control" name="state" id="statee"
					pattern="[.&+a-zA-Z\s]*$">
			</div> -->
		
	<form>
		<fieldset>
			<legend>Select State</legend>
			<p>
				<select name="List">
					<option value=""> </option>
					<option value="Andaman and Nicobar Islands">Andaman and
						Nicobar Islands</option>
					<option value="Andhra Pradesh">Andhra Pradesh</option>
					<option value="Arunachal Pradesh">Arunachal Pradesh</option>
					<option value="Assam">Assam</option>
					<option value="Bihar">Bihar</option>
					<option value="Chandigarh">Chandigarh</option>
					<option value="Chhattisgarh">Chhattisgarh</option>
					<option value="Dadra and Nagar Haveli">Dadra and Nagar
						Haveli</option>
					<option value="Daman and Diu">Daman and Diu</option>
					<option value="Delhi">Delhi</option>
					<option value="Goa">Goa</option>
					<option value="Gujarat">Gujarat</option>
					<option value="Haryana">Haryana</option>
					<option value="Himachal Pradesh">Himachal Pradesh</option>
					<option value="Jammu and Kashmir">Jammu and Kashmir</option>
					<option value="Jharkhand">Jharkhand</option>
					<option value="Karnataka">Karnataka</option>
					<option value="Kerala">Kerala</option>
					<option value="Lakshadweep">Lakshadweep</option>
					<option value="Madhya Pradesh">Madhya Pradesh</option>
					<option value="Maharashtra">Maharashtra</option>
					<option value="Manipur">Manipur</option>
					<option value="Meghalaya">Meghalaya</option>
					<option value="Mizoram">Mizoram</option>
					<option value="Nagaland">Nagaland</option>
					<option value="Orissa">Orissa</option>
					<option value="Pondicherry">Pondicherry</option>
					<option value="Punjab">Punjab</option>
					<option value="Rajasthan">Rajasthan</option>
					<option value="Sikkim">Sikkim</option>
					<option value="Tamil Nadu">Tamil Nadu</option>
					<option value="Tripura">Tripura</option>
					<option value="Uttaranchal">Uttaranchal</option>
					<option value="Uttar Pradesh">Uttar Pradesh</option>
					<option value="West Bengal">West Bengal</option>


				</select>
			</p>
		</fieldset>
	</form>
			
			
			
			<div class="form-group" id= pincode >
				<label for="pincode">PIN CODE<span class="star">*</span></label> <input
					type="text" class="form-control" name="pin" id="pin" pattern="[1-9]{1}[0-9]{5}" title=" 6 DIGIT PIN ONLY"> 
				
			</div>
			<button type="submit" class="btnN" name="next">SUBMIT</button>
		</spring:form>
	</div>
	<!-- <div>  -->

	<!-- <script type="text/javascript">
			
			$(document).ready(function(){
				
				$('#pinn').hide();
			 var pin_err=true;				
				$('#pin').keyup(function(){
					pin_check();
					});
				function pin_check(){
					var pin_val=$('#pin').val();
					
					if(pin_val.length== ''){
						$('#pinn').show();
						$('#pinn').html("** PLEASE FILL THE PIN CODE");
						$('#pinn').focus();
						pin_err = false;
						return false;
						
					}
					else{
						$('#pinn').hide();
					}
					
					
					if((pin_val.length < 6) || (pin_val.length>6)){
						$('#pinn').show();
						$('#pinn').html("** PIN CODE MUST BE OF 6 DIGITS ONLY");
						$('#pinn').focus();
						pin_err = false;
						return false;
						
					}
					else{
						$('#pinn').hide();
					}
					
					
					
					}
					
				});
		
</script> -->

</body>
</html>
