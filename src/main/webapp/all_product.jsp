
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
        <style><%@include file="css/all_product.css"%></style>
        
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
	  
	  
        <div class="whitediv">
            <%
            Connection cn=null;
            Statement st=null;
            
            
             Class.forName("com.mysql.jdbc.Driver");
             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_mobile_shopping","root","root");
             st = cn.createStatement();
             String sql = "select * from add_product";
             ResultSet rs = st.executeQuery(sql);
                   while(rs.next())
                                             {
            %>
 
            <form name="all_product" action="all_product" method="post">
            <div class="col-sm-2" style="margin-left: 2%;">
              <div class="product_div">
                 <div class="image_div">
                     
                     
                     <input type="hidden" name="image" value="<%=rs.getString("image")%>">
                     <input type="hidden" name="company_name" value="<%=rs.getString("company_name")%>">
                     <input type="hidden" name="product_name" value="<%=rs.getString("product_name")%>">
                     <input type="hidden" name="price" value="<%=rs.getString("price")%>">
                     <input type="hidden" name="country" value="<%=rs.getString("country")%>">
                     <input type="hidden" name="product_id" value="<%=rs.getString("product_id")%>"> 
                     
                     <img src="images/<%=rs.getString("image")%>" class="productimage">
                    
                    <label>Product Name- <%=rs.getString("product_name")%></label><br>
                    <label>Company Name:- <%=rs.getString("company_name")%></label><br>
                    
                    <label>Price:- <%=rs.getString("price")%></label><br>
                    
                    <br>
                    <input type="submit" name="submit" value="View Product" class="btn">
                 </div>
                 
             </div>
            </div>
            </form>
             
            
            <%
                       }
            %>
        </div>
           
    </body>
</html>
