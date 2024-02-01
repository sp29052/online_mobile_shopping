
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
	<title>Address</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <script src="validation.js"></script>
        <link rel="stylesheet" type="text/css" href="css/user_login.css">
</head>
	
  <style>
            body
            {
                background-image: url(760465.png);
                background-size: cover;
            }
            .div1
            {
                
                width:720px;
                height: 680px;
                background-color: #D1EEE8;
                margin-left:320px;
                border-radius: 3px;
            }
            input[type=text]
            {
                
                width: 240px;
                height: 40px;
            }
            input[name=address]
            {
                width: 490px;
                height: 70px;
            }
            div[class=form-group]
            {
                width: 240px;
                height: 50px;
            }
            input[id=id]
            {
                width: 220px;
                height: 50px;
                background-color: #ff6600;
                border-color: #ff6600;
                color: white;
                font-size: 15px;
                text-shadow: 0.4px 0.4px 1px;
                border-radius: 3px;
            }
            input[id=id]:hover
            {
                background-color: #ff6600;
                border-color: #ff6600;
                color: white;
            }
            
          h2
            {
                font-family: serif;
                font-size: 25px;
                margin-left: 190px;
                
                padding-top: 30px;
            }
        </style>
</head>

<body>
	<header>
		
		<!-- <img src="Images\manvayar-logo-icon-new.png" height="50" width=""> -->
		<h1>Online Mobile Shop</h1>
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
	


  <form name="address" action="address" method="post">
        <div class="div1">
            <h2 class="css">
                &nbsp;&nbsp;&nbsp;
                DELIVERY ADDRESS
            </h2>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-7">
                    <br>
                    <input type="text" name="name" placeholder="Name" class="form-control" required="required" style="width: 490px" onkeypress="javascript:return isNumber(event)">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                
                <div class="col-sm-3">
                    <br>
                    <input type="text" name="mobilenumber" placeholder="10-digit mobile number" class="form-control" required="required" maxlength="10" onkeypress="javascript:return isNumber(event)">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                    <br>
                    <input type="text" name="pincode" placeholder="Pincode" class="form-control" required="required" maxlength="6" onkeypress="javascript:return isNumber(event)">
                </div>
                <div class="col-sm-3">
                    <br>
                    <input type="text" name="locality" placeholder="Locality" class="form-control" required="required" onkeypress="javascript:return isString(event)">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                    <br>
                    <input type="text" name="address" placeholder="Address (Area and Street)" required="required" class="form-control">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                    <br>
                    <input type="text" name="entercity" placeholder="City/District/Town" class="form-control" required="required" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <br>
                        <input type="text" list="state" class="form-control" name="enterstate" placeholder="State">
                        <datalist name="enterstate" id="state" style="height:40px;">
                             <option>Maharashtra</option>
                             <option>Goa</option>
                             <option>Karnataka</option>
                             <option>Kerala</option>
                        </datalist>
                    </div>
                </div>
                <div class="col-sm-4"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                    <br>
                    <input type="text" name="landmark" placeholder="Landmark (Optional)" class="form-control" onkeypress="javascript:return isString(event)">
                </div>
                <div class="col-sm-3">
                    <br>
                    <input type="text" name="alternatemobilenumber" placeholder="Alternate Phone (Optional)" class="form-control" onkeypress="javascript:return isNumber(event)">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                    <br><br>
                    <input type="submit" id="id" name="submit" value="CONTINUE" class="btn btn">
                </div>
                <div class="col-sm-3">
                    <br><br>
                    <a href="index.jsp" class="btn btn" style="background: transparent; border-color: transparent; color: #056ED2; width: 100px; height: 50px; text-shadow:  1px 1px 1px;">CANCEL</a>
                </div>
            </div>
            </div>
             <br>
         </form>

</body>

</html>

