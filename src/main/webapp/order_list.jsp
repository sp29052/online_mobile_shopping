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
        <style><%@include file="css/order_list.css"%></style>
    </head>
    <style>
  header
{
	background-color: black;
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
	background-color: #800000;
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
                     

                         
		</ul>
	  </nav>
	  
        <table>
            <thead>
            <th>Item</th>
            <th>Product Id</th>
            <th>Item Name</th>
            <th>Company Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
           
            <th>Date</th>
            <th>Action</th>
        </thead>
           <%
         Connection cn=null;
         Statement st=null; 
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_mobile_shopping","root","root");
        st=cn.createStatement();


        String sql="select * from  orders where user_id ='"+session.getAttribute("user_id")+"' ";
        ResultSet rs= st.executeQuery(sql);   
        
        while(rs.next())
        {                                                                                                                                
         %>
         <form name="order_list" action="order_list" method="post">
        <tbody>
            <tr>
                <input type="hidden" name="order_id" value="<%=rs.getString("order_id")%>">
                <td><img src="images/<%=rs.getString("image")%>" style="height: 100px; width: 100px;"></td>
                <td><%=rs.getString("product_id")%></td>
                <td><%=rs.getString("product_name")%>/td>
                <td><%=rs.getString("company_name")%></td>
                <td><%=rs.getString("price")%></td>
                <td><%=rs.getString("quantity")%></td>
                <td><%=rs.getString("total")%></td>
                 <td><%=rs.getString("order_date")%></td> 
                <td><input type="submit" name="submit" value="Cancel Order"></td>
            </tr>
        </tbody>
         </form>
             <%
                       }
            %>
           
        
    </table>
    </body>
</html>
