
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
        <style><%@include file="css/report.css"%></style>
    </head>
    <style>
    td
    {
    height:35px;
    }
    
    </style>
    <body>
    <form name="report" action="report_view.jsp" method="post">
    <label>Report Page</label>
        <div class="whitediv"><br><br><br>
        <div class="row">
            <div class="sol-sm-6">
            <input type="submit" class="button" value="User List" name="submit">
             <input type="submit" class="button" value="Order List" name="submit">
            
            
            </div>
            
            
            
            
            <div class="sol-sm-6">
            <input type="submit" class="button" value="Address List" name="submit">
             <input type="submit" class="button" value="Cart List" name="submit">
            
            
            </div>
        
        
        </div>
         <input type="submit" class="button" value="Payment List" style="margin-left:160px;" name="submit">
        </div>
        </form>
    </body>
</html>
