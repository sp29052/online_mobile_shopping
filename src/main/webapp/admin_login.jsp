<%-- 
    Document   : Admin_login.jsp.
    Created on : 2 Feb, 2023, 2:24:41 AM
    Author     : hp


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbarbeforelogin.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">

        <style><%@include file="css/admin_login.css"%></style>
    </head>
    <body>
        <form action="admin_login" method="post">
         <div class="whitediv">
             <br>
                <center><h1 style="color:red;" class="w"><b><i>WELCOME...</i></b></h1></center> 
                <i class="fa fa-user" style="font-size:30px;margin-left: 60px"></i>
                <input type="text" class="textbox" name="uname" placeholder="enter username or email">
                   
                <i class="fa fa-unlock-alt" style="font-size:30px;margin-left: 60px"></i>
                <input type="password" class="textbox" name="pass" placeholder="enter password">
                <br><br>
                
                <center><input type="checkbox">  <label>Remember me</label></center>
               
            <input type="submit" class="button"  name="submit" value="Login">
            <br><br>
            <center>
            <a href="admin_signup.jsp" style=" margin-left: 10px; color:black;"  name="submit" value="forpass">IF YOU DONT HAVE AN ACCOUNT??SIGNUP HERE</a>
             <bR><a href="forget_password.jsp" style=" margin-left: 150px; color:black;"  name="submit" value="forpass">Forgot Password?</a>
                 
                 
                
            </div>
        </form>
    </body>
</html>
--%>


<!DOCTYPE html>
<html>
<head>
  <title>LOGIN</title>
  <link rel="stylesheet" type="text/css" href="CSS/mainstyle.css">
  <link rel="stylesheet" type="text/css" href="css/user_login.css">
</head>
<body>
  <header>
    
    <h1>Online Mobile STORE</h1>
  </header><br>
    <nav> 
    <ul>
                             <li><a href="index.jsp ">HOME</a></li>
                         <li><a href="admin_login.jsp">ADMIN LOGIN</a></li>
                         <li><a href="admin_signup.jsp">ADMIN SIGNUP</a></li>
    </ul>
  </nav>


<!-- Login Form Of Customer -->
<form action="admin_login" name="admin_login" method="post" >
  <div class="imgcontainer"><center>
    <img src="images\WelcomeLogo.jpg" alt="Welcome" class="avatar" height="100" width="5"></center>
  </div>

  <div class="container">
    <label for="uname"><b>Email ID</b></label>
    <input type="text" placeholder="Enter Email" name="uname" >

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pass" >

    
    <input type="submit" name="submit"  id="login" value="Login" style="background-color:  #800000; color: white; padding: 14px 20px;  margin: 8px 0; border: none; cursor: pointer; width: 100%;">

    <label>

    <input type="checkbox"  name="remember" > Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
 
    <button type="reset" class="cancelbtn" value="Cancel">Cancel</button>
    <button type="button" class="Forgotbtn" onclick="OpenNewWindow()" value="Forgot Password">Forgot Password</button>
    <a href="admin_register.jsp">
    <button type="button" class="Register" onclick="" value="Not A Member Register Now">Not A Member Register Now</button>
  </a>
  </div>
</form>

<!-- Footer Of WebPage -->
<footer>
  <p><b>THIS WEB-PAGE is DEVELOPED BY </p></b>   
  </footer> 
</body>
</html>