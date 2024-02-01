
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
        <style><%@include file="css/product_inf.css"%></style>
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
	  
	  
        
       <%
            Connection cn=null;
            Statement st=null;
            
            
             Class.forName("com.mysql.jdbc.Driver");
             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_mobile_shopping","root","root");
             st = cn.createStatement();
             String sql = "select * from add_product where product_id = '"+session.getAttribute("id")+"' ";
             ResultSet rs = st.executeQuery(sql);
                   while(rs.next())
                                             {
        %>
            
            
        <form name="product_inf" action="product_inf" method="post">
        <div class="whitediv">
            <input type="hidden" name="image" value="<%=rs.getString("image")%>">
            <input type="hidden" name="company_name" value="<%=rs.getString("company_name")%>">
            <input type="hidden" name="product_name" value="<%=rs.getString("product_name")%>">
            <input type="hidden" name="price" value="<%=rs.getString("price")%>">
            <input type="hidden" name="country" value="<%=rs.getString("country")%>">
            <input type="hidden" name="product_id" value="<%=rs.getString("product_id")%>"> 
            <input type="hidden" name="ram" value="<%=rs.getString("ram")%>">
            <input type="hidden" name="camera" value="<%=rs.getString("camera")%>"> 
                     
                     
            <div class="col-sm-6">

                <div class="image_div">
                <img src="images/<%=rs.getString("image")%>" style="height: 400px; width: 100%">
                    
                </div>

                  <div class="row">
                  <div class="col-sm-6"><input type="submit" class="btn" value="Add to cart" name="submit"></div>
                   <div class="col-sm-6"><input type="submit" class="btn" value="Buy Now" name="submit"></div>
                  </div>


            </div>
            <div class="col-sm-6">
               <label style="color: red; font-size:25px"><%=rs.getString("product_name")%></label>

                <label>Company Name:- <%=rs.getString("company_name")%></label><br>
                <label>Price:-<%=rs.getString("price")%>/-</label><br>
                <label>Ram:-<%=rs.getString("ram")%>/-</label><br>
                <label>Camera:-<%=rs.getString("camera")%>/-</label><br>
                 <label>Info:-<%=rs.getString("country")%>/-</label><br>
                <label>Select Quantity</label> <input type="number" name="quantity" min="1" style="margin-left:30px"><br>
                <label>Total</label > <input type="text" name="total" min="1" > <br> 
               
            </div>
           
            
                
        </div>
        </form>
                
                <% } %>
    </body>
</html>
