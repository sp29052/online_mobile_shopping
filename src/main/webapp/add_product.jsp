<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_homepage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/add_product.css"%></style>
    </head>
    <body>
        <form name="add_product" action="add_product" method="post">
        <div class="whitediv">
            <div class="col-sm-6">

                <div>
                    <img src="images/1.jpg" style="height: 200px;width: 300px; margin-top: 90px;"><br>
                    <label>Add Image:-</label><input type="file" class="textbox" name="image" >
                </div>
                
                <input type="submit" name="submit" value="ADD" class="btn" style="margin-top:20px"> 

            </div>
             <div class="col-sm-6" style="margin-top: 50px">
                <div class="row">
                <div class="col-sm-3"><label>company name:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" placeholder="enter company name" name="company_name"></div>
                </div>
                
                <div class="row">
                <div class="col-sm-3"><label>product  name:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" placeholder="enter Product name" name="product_name"></div>
                </div>
                
                <div class="row">
                <div class="col-sm-3"><label>Price:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" placeholder="enter Price" name="price"></div>
                </div>
                
                <div class="row">
                <div class="col-sm-3"><label>Product Info:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" placeholder="enter Information" name="country"></div>
                </div>
                
                 <div class="row">
                <div class="col-sm-3"><label>Ram::</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" placeholder="enter ram" name="ram"></div>
                </div>
                
                
                 <div class="row">
                <div class="col-sm-3"><label>Camera:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" placeholder="enter Camera" name="camera"></div>
                </div>
                
                
            </div>
            
            
                  
        </div>
             
        </form>
    </body>
</html>
