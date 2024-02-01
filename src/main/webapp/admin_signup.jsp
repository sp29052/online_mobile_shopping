
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_homepage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="css/validation.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">

        <style><%@include file="css/admin_signup.css"%></style>
       
    </head>
    <body>
        <form action="admin_signup" name="admin_signup" method="post">
        <div class="whitediv">
            <div class="row">
                <div class="col-sm-6" style="margin-left:60px;margin-top:40px">
                    <input type="text" class="textbox" name="companyname" placeholder="Enter Company Name"onkeypress="return isString(event);">
                    <input type="text" class="textbox" name="email" placeholder="Enter Email">
                    <input type="text" class="textbox" name="firstname" placeholder="Enter First Name "onkeypress="return isString(event);">
                    <input type="text" class="textbox" name="lastname" placeholder="Enter Last Name"onkeypress="return isString(event);">
                    <input type="text" class="textbox" name="addressline1" placeholder="Enter Address line1">
                    <input type="text" class="textbox" name="addresssline2" placeholder="Enter Address line2">
                    
                </div>
                <div class="col-sm-6" style="margin-left:360px; margin-top:-330px">
                    <input type="text" class="textbox" name="city" placeholder="Enter City"onkeypress="return isString(event);">
                    <input type="text" class="textbox" name="state" placeholder="Enter State"onkeypress="return isString(event);">
                    <input type="text" class="textbox" name="pincode" placeholder="Enter Pin-code">
                    <input type="text" class="textbox" name="contactno" placeholder="Enter Contact No">
                    <input type="password" class="textbox" name="password" placeholder="Password">
                    <input type="password" class="textbox" name="confirmpassword" placeholder="Confirm-Pasasword">
                    
                    <input type="submit" class="button" name="submit" value="Register"> 
                  
                   
                </div>
            </div>
            
        </div>
        </form>
    </body>
</html>

