
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/cart_page.css"%></style>
        <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
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


    
    </style>
    
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
	  
	  
        
        <form name="cart_page" action="cart_page" method="post">
            <div class="mydiv" style="width: 1100px; margin-left: 100px;"> 
            <div class="row">
            <div class="col-sm-3">
                <label>Item</label><br><br><hr style="margin-top: 3px;"> 
            </div> 
             <div class="col-sm-3 price">
                 <label>price</label><hr> 
            </div> 
             <div class="col-sm-3 quantity">
                 <label>Quantity</label><hr> 

            </div> 
             <div class="col-sm-3" button>
                  <label>Total</label><hr> 
            </div>
            </div>
            
            <%
            Connection cn=null;
            Statement st=null;
            
            long subtotal = 0;
            long shipping = 50;
            
             Class.forName("com.mysql.jdbc.Driver");
             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_mobile_shopping","root","root");
             st = cn.createStatement();
             String sql = "select * from cart where user_id = '"+session.getAttribute("user_id")+"'  ";
             ResultSet rs = st.executeQuery(sql);
                   while(rs.next())
                   {
                	   
                		                           String totalValue = rs.getString("total");
                		                           if (!totalValue.isEmpty()) {
                		                               subtotal = subtotal + Long.parseLong(totalValue);
                		                           
                		                           }
            %>
        
        
            <div class="row" style="width: 1100px;"><hr>
                
                <input type="hidden" name="image" value="<%=rs.getString("image")%>">
                <input type="hidden" name="company_name" value="<%=rs.getString("company_name")%>">
                <input type="hidden" name="product_name" value="<%=rs.getString("product_name")%>">
                <input type="hidden" name="price" value="<%=rs.getString("price")%>">
                <input type="hidden" name="country" value="<%=rs.getString("country")%>">
                <input type="hidden" name="product_id" value="<%=rs.getString("product_id")%>">
                <input type="hidden" name="cart_id" value="<%=rs.getString("cart_id")%>">
                <input type="hidden" name="user_id" value="<%=rs.getString("user_id")%>">
                <input type="hidden" name="quantity" value="<%=rs.getString("quantity")%>">
                <input type="hidden" name="total" value="<%=rs.getString("total")%>">
                     
                     
            <div class="col-sm-3"> 
                <img src="images/<%=rs.getString("image")%>" style="height: 80%; width: 40%; margin-top: 1px;">
            </div>
               
             <div class="col-sm-3 price"> 
                 <label>RS.<%=rs.getString("price")%></label>
            </div>
                
             <div class="col-sm-3 quantity"> 
                 <label><%=rs.getString("quantity")%></label>

            </div>
                
             <div class="col-sm-3" button> 
                  <label><%=rs.getString("total")%></label>
            </div> 
             </div>
            
            <% }
             
             long grand_total = shipping+subtotal;
            %>
            
            
            
            
          
        <div class="textbox1">
            <label style="margin-left: -45px; color: red">Price Details:-</label>
        <div class="row" >
            <div class="col-sm-3"><label>SubTotal</label></div>
            <div class="col-sm-5"><input type="text" class="textbox" value="<%=subtotal%>"></div><br>
            </div><br>
            <div class="row">
                <div class="col-sm-3"><label>Shipping Charge</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" value="50" disabled="true"></div>
            </div><br>
            <div class="row">
                <div class="col-sm-3"><label>Grand Total</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" value="<%=grand_total%>"></div>
            </div><br>
            
            <div class="row">
            <div class="col-sm-6"><input type="submit" class="btn" name="submit" value="Continue shopping" style="margin-left: 10px;"></div>
            <div class="col-sm-6"><input type="submit" class="btn" name="submit" value="Buy Now" style="margin-left: -220px;"></div>

        </div>
        </div>
        
        
        </div>
        </form>
    </body>
</html>
