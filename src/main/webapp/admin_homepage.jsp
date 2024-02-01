
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="https:/maxcdn.bootstrapcdn.com/bootarrap?3.4.1?css?bootrrap.nin.csss">
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
     <body>
     <header>
		
		<!-- <img src="Images\manvayar-logo-icon-new.png" height="50" width=""> -->
		<h1>Online Mobile STORE</h1>
	</header><br>
	<nav>	
		<ul>
			             
			           <li><a class="active" href="index.jsp">Home</a></li>
            <li><a href="add_product.jsp">Add Product</a></li>
            <li><a href="update_product.jsp">UPdate & Delete Product </a></li>
            <li><a href="admin_order_list.jsp">Order List</a></li> 
             <li><a href="customer_history.jsp">Customer List</a></li> 
             <li><a href="report.jsp">Report View</a></li> 
                          <li style="float: right"><a href="../login.jsp">LOGOUT</a></li>
			             
                         
		</ul>
            
	  </nav>
	
     
     
     </body>
</html>
