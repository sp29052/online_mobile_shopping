
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            ul {
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
            <li><a class="active" href="admin_homepage.jsp">Home</a></li>
            <li><a href="add_product.jsp">Add Product</a></li> 
            <li><a href="update_product.jsp">Update Product</a></li>
            <li><a href="admin-order_list.jsp">Order List</a></li>
            <li><a href="customer_history.jsp">Customer History</a></li> 
            <li style="float: right;"><a href="admin_login.jsp">LOGOUT</a></li>
          </ul>
    
    
    </head>
    
    
    
    
    
</html>
