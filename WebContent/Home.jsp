<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="css/home.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.1.0.min.js"></script>


</head>
<body>


<%@ include file="navigationBanner.jsp" %>


	<div id="allproducts">
		<ul>
			<c:forEach items="${ProductList}" var="product">
				<li>
					<div class="prod">
						<img alt="products" src="${product.productImgUrl}">

					</div>
				</li>
			</c:forEach>
		</ul>
	</div>

</body>
</html>