<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="admin_homepage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/order_list.css"%></style>
    </head>
    <body>
        <table>
            <thead>
            <th>Product Id</th>
            <th>Item</th>
            <th>Item Name</th>
            <th>company_name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
           
             <th>Date</th>
             
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
         <form name="admin_order_list" action="admin_order_list" method="post">
        <tbody>
            <tr>
        <input type="hidden" name="order_id" value="<%=rs.getString("order_id")%>"> 
        
        
                <td><img src="images/<%=rs.getString("image")%>" style="height: 100px; width: 100px;"></td>
                <td><%=rs.getString("product_id")%></td>
                <td><%=rs.getString("product_name")%></td>
                <td><%=rs.getString("company_name")%></td>
                <td><%=rs.getString("price")%></td>
                <td><%=rs.getString("quantity")%></td>
                <td><%=rs.getString("total")%></td>
               
                <td><%=rs.getString("order_date")%></td> 
               
                
                
            </tr>
            </tbody>
         </form>
             <%
                       }
            %>
           
        
    </table>
    </body>
</html>
