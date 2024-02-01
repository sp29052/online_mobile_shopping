
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_homepage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style><%@include file="css/order_list.css"%></style>
        <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <style>
    td
    {
    height:35px;
    }
    
    </style>
    <body>
        <table>
            <thead>
            <th>Product Id</th>
            <th>First Name</th>
           
            <th>Email Id</th>
            <th>Contact Number</th>
          
        </thead>
        <%
        Connection cn=null;
         Statement st=null; 
                              Class.forName("com.mysql.jdbc.Driver");
                                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_mobile_shopping","root","root");
                                  st=cn.createStatement();
                                  
                                  
                                  String sql="select * from user_signup ";
                                  ResultSet rs= st.executeQuery(sql);  


        while(rs.next())
        {                                                                                                                                
         %>
        <tbody>
            <tr>
                <td><%=rs.getString("id")%></td>
                <td><%=rs.getString("firstname")%></td>
               
                <td><%=rs.getString("EmailAddress")%></td>
                <td><%=rs.getString("ContactNumber")%></td>
               
                
            </tr>
            <%
                       }
            %>
        </tbody>
    </table>
    </body>
</html>
