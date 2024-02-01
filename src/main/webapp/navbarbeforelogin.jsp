

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
          
            ul{
              list-style-type: none;
              margin: 0;
              padding: 0;
              overflow: hidden;
              background-color: #333;
            }
           

            li {
              float: left;
            }

            li a {
              display: block;
              color: white;
              text-align: center;
              padding: 14px 16px;
              text-decoration: none;
            }

            li a:hover:not(.active) {
              background-color: #111;
            }

            .active {
              background-color: #04AA6D;
            }
         </style>
         
         
         <ul>
            <li><a class="active" href="index.jsp">Home</a></li>
            <li><a href="admin_login.jsp">Admin Login</a></li>
            <li><a href="admin_signup.jsp">Admin Signup</a></li>
            <li><a href="user_login.jsp">User Login</a></li> 
            <li><a href="user_signup.jsp">User Signup</a></li>
          </ul>
    
    
    </head>
    
    
    
    
    
</html>
