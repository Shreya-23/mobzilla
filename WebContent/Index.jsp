<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/home.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Monoton|Muli|PT+Sans|Philosopher|Raleway"
	rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mobzilla</title>
</head>
<body>

<%@ include file="NavigationBanner.jsp"%>

<!-- Slideshow container -->
<div class="slideshow-container">

<div class="mySlides">
<a href="2ProductDesc.shop">
  <img src="homepage-images/img1.jpg" style="width:100%; height: 100%;">
</a>
</div>

<div class="mySlides">
<a href="3ProductDesc.shop">
  <img src="homepage-images/img2.jpg" style="width:100% ; height: 100%;">
</a>
</div>

<div class="mySlides">
<a href="4ProductDesc.shop">
  <img src="homepage-images/img3.jpg" style="width:100% ; height: 100%;">
</a>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>
<br><br>
<section id="about">
<div class="footer">
<%@ include file="Footer.jsp"%>
</div></section>
<script type="text/javascript">

		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
			showSlides(slideIndex = n);
		}

		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			if (n > slides.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = slides.length
			}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
		}
	</script>

</body>
</html>