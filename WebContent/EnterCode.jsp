<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="css/home.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">
<script src="main.js"></script>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="background"></div>
	<%@ include file="NavigationBanner.jsp"%>
	<div class="smartphone" style="background-color: #FFF">
		<div class="content" style="overflow: scroll;">

			<button class="back" onclick="history.go(-1)"></button>
			<h2>Change Password</h2>
			<hr class="custom">
			<spring:form action="otp.shop" method="post" modelAttribute="vbean">
				
				<div class="form-group">
					<label for="phno">ENTER VERIFICATION CODE<span class="star">*</span></label> <input
						type="text" class="form-control" name="code">
				</div>
				
				<br>
				<br>
				<button type="submit" class="btnL">Submit</button>
				<br>
				<br>
				<br>
			</spring:form>
		</div>
	</div>
<section id="about">
<div class="footer">
<%@ include file="Footer.jsp"%>
</div></section>	


</body>
</html>