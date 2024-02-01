
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="css/user_login.css">
          <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
        <style>    
         
          body
            {
                background-image: url("images/4.jpg");
                 background-repeat:no-repeat;
                background-size: cover;
                
            }
</style>
    </head>
    <body>
        <header>

		<!-- <img src="Images\manvayar-logo-icon-new.png" height="50" width=""> -->
		<h1>Online Mobile Store</h1>
	</header><br>
<nav>	
		<ul>
			           <li><a class="active" href="index.jsp">Home</a></li>
            <li><a href="all_product.jsp">All Product</a></li>
            <li><a href="cart_page.jsp">Cart </a></li>
            <li><a href="order_list.jsp">Order List</a></li> 
            <li style="float: right;"><a href="user_login.jsp">LOGOUT</a></li>
                          <li style="float: right"><a href="../login.jsp">LOGOUT</a></li>

                         
		</ul>
	  </nav>
	  
	  
	  <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext"></div>
      <img src="images/1.jpg" height="100%" width="100%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/2.jpeg" height="100%" width="100%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/1.jpg" height="100%" width="100%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/1.jpg" height="100%" width="100%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/1.jpg" height="100%" width="100%">
  <div class="text"></div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
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
  for (i = 0; i < slides.length; i++) 
  {
    slides[i].style.display = "none";  
  }

  slideIndex++;
  if (slideIndex > slides.length) 
  	{slideIndex = 1}  

  for (i = 0; i < dots.length; i++) 
  {
    dots[i].className = dots[i].className.replace(" active", "");
  }

  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
	  
    </body>
    
    
</html>
