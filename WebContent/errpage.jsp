<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error Page</title>
</head>
<body>
	<h1>Sorry!The request cannot be processed at this moment</h1>
	<hr>
	<h2>Cause of the problem is...</h2>
	<h3 style="color: black"><%=exception%></h3>
	<form action="${return}">
		<input type="Submit" value="Return"></input>
	</form>
	</body>
</html>