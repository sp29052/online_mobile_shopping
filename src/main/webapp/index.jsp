<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--- --%><!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style><%@include file="css/index.css"%></style>
<style><%@include file="css/user_login.css"%></style>

</head>
<body>
 <header>
    <h1>Online Mobile STORE</h1>
  </header>
    <nav> 
    <ul>
			            <li><a href="index.jsp ">HOME</a></li>
                         <li><a href="user_login.jsp"> User LOGIN</a></li>
                         <li><a href="admin_login.jsp"> AdMIN Login</a></li>
		</ul>
  </nav>
 
    
       
  
<div class="slideshow-container">

<div class="mySlides fade">
  
  <img src="images/1.jpg" style="width:1600px; height: 660px; margin-top:-20px;">

</div>

<div class="mySlides fade">
  
  <img src="images/2.jpeg" style="width:1600px; height: 660px;margin-top:-20px;">
  
</div>

<div class="mySlides fade">
  
  <img src="images/3.jpg" style="width:1500px; height: 660px;margin-top:-20px;">

</div>

<div class="mySlides fade">
  
  <img src="Images/4.jpeg" style="width:1500px; height: 660px;margin-top:-20px;">
  
</div>

<div class="mySlides fade">
  
  <img src="images/5.jpeg" style="width:1600px; height: 660px;margin-top:-20px;">
  
</div>

<div class="mySlides fade">
  
  <img src="images/6.jpeg" style="width:1600px; height: 660px;margin-top:-20px;">
  
</div>


<div class="mySlides fade">
  
  <img src="images/1.jpg" style="width:1500px; height: 660px; margin-top:-20px;">

</div>

<div class="mySlides fade">
  
  <img src="images/2.jpeg" style="width:1600px; height: 660px;margin-top:-20px;">
  
</div>

<div class="mySlides fade">
  
  <img src="images/3.jpg" style="width:1600px; height: 660px;margin-top:-20px;">

</div>

<div class="mySlides fade">
  
  <img src="Images/4.jpeg" style="width:1500px; height: 660px;margin-top:-20px;">
  
</div>

<div class="mySlides fade">
  
  <img src="images/5.jpeg" style="width:1500px; height: 660px;margin-top:-20px;">
  
</div>

<div class="mySlides fade">
  
  <img src="images/6.jpeg" style="width:1600px; height: 660px;margin-top:-20px;">
  
</div>


<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 1 seconds
}
</script>

</div>
        
        
        

</body>
</html>