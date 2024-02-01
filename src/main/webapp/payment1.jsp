
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>PAYMENT</title>
	
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	
 <style>
  
  header
{
	background-color: bisque;
	color: #FFD700;
	

}

header img
{
	
	width: 5%;
	margin-top: 15px;
	border-radius: 20px;
}

header h1{
	text-align: center;
	padding: 10px;
	font-size: 65px;
	text-shadow: 3px 3px 3px black;
	color: Gold;
}

header h2{
	text-align: center;
	padding: 10px;
	font-size: 65px;
	text-shadow: 3px 3px 3px black;
	color: #aa8531;
	background-color: white;
}

 /*nav means menus on top bar*/
nav ul  
{
	background-color: lightcyan	;
	color:#DAA520;
	margin-top:-20px;
	text-align: center;
}


nav ul li,
nav ul li a
{
	display: inline-block;
	color: #DAA520;
	text-align: center;
	text-decoration-style: bold;
}

nav ul li a:link,
nav ul li a:visited
{
	text-decoration: none;
	padding: 8px;
	transition: all 0.9s;
	text-align: center;
}

nav ul li a:hover,
nav ul li a:active
{
	/*background-color: #00ffff;*/
	background-color: white; 
}

iframe{
	float: right;
}




footer{
	height: 100px;
	background-color: #505050;
	clear: both;
}

footer p {
	margin: 0px;
	padding: 0px;
	line-height: 100px;
	color: #fff;
	text-align: center;
}


    
         body
            {
                background-image: url(760465.png);
                background-size: cover;
            }
        .div1
            {
                
                position: absolute;
                width:510px;
                height: auto;
                background-color: #D1EEE8;
                top: 350px;
                left:450px;
                border-radius: 3px;
            }
            h2
            {
                text-align: center;
                font-family: serif;
                font-size: 25px;
                
            }
            input[type=text]
            {
                height: 40px;
                width: 420px;
            }
            input[id=id]
            {
                height: 40px;
                width: 420px;
                background-color: #ff6600;
                color: white;
                border-radius: 3px;
            }
            input[id=id]:hover
            {
                color: white;
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
	  
	<h2>
<b><center><h2>Payment Page</center></b></h2></header>


  
<!-- 
CODE FOR SLIDE SHOW OF WOMENS COLLECTION -->

  <form name="payment" action="payment1" method="post">
        <div class="div1" style="margin-top:-100px">
            <h2>
               
                PAYMENT
            </h2>
            
 
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-6">
                <input type="radio" name="pay" onclick="myFunction()">
                &nbsp;
                <label style="font-size: 18px;">Credit/Debit</label> 
            </div>
        </div>
   
   <div id="creditform"  style="display: none">
   <div class="row">
       <div class="col-sm-1"></div>
       
                <div class="col-sm-8">
                
                <label>Card Number</label>
    
                <input type="text" name="credit" placeholder="1234 5678 9012 3456" class="form-control" onkeypress="javascript:return isNumber(event)">
                </div>
   </div>           
       <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-8">
                
                    <label style=" margin-top: 7px;">Name On Card</label>
    
                    <input type="text" name="name" placeholder="Ex. John D'souza" class="form-control"  onkeypress="javascript:return isString(event)">
                </div>
       </div>
       <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-6">
                
                <label style=" margin-top: 7px;">Expiry Date</label>
    
                    <input type="date" name="expiry" class="form-control"  style="height:40px; width: 200px;">
                </div>
                      
                
                <div class="col-sm-2">
                
                <label style=" margin-top: 7px;">CVV</label>
    
                <input type="text" name="cvv" placeholder="* * *" class="form-control"  style="width: 150px;" maxlength="3" onkeypress="javascript:return isNumber(event)">
                </div>
            </div>
            
        </div>
            <br>
            
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                 
                &nbsp;
                 
                
            </div>
        </div>
            <div id="netbank" style="display: none">
            
            <div class="row">
                
            
        
               
        </div>
            </div>
            <br>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <input type="radio" name="pay" onclick="cod()"> 
                &nbsp;
                <label style="font-size: 18px;">Cash On Delivery</label>
                
            </div>
 
        </div>
            <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                <input type="submit" id="id" name="submit" value="PAY" class="btn btn">
                </div>
                <div class="col-sm-1"></div>
            </div>
            <br>
        </div>
        </form>
 <script>
function myFunction() {
     var y = document.getElementById("netbank");
     y.style.display="none";
  var x = document.getElementById("creditform");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
function net() {
    var y = document.getElementById("creditform");
     y.style.display="none";
  var x = document.getElementById("netbank");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
   
  }
}
function cod() {
    var x = document.getElementById("netbank");
    var y = document.getElementById("creditform");
     y.style.display="none";
 
    x.style.display = "none";
   
  }

</script>
</body>

</html>

