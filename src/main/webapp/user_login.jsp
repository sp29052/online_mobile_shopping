<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title> WEDDING WEAR LOGIN</title>
  <link rel="stylesheet" type="text/css" href="CSS/mainstyle.css">
  <link rel="stylesheet" type="text/css" href="css/user_login.css">
</head>
<body>
  <header>
    
    <h1>Online Mobile STORE</h1>
  </header>
    <nav> 
    <ul>
			             <li><a href="index.jsp ">HOME</a></li>
			
                          
                          <li><a href="user_login.jsp">LOGIN</a></li>

                         <li><a href="user_signup.jsp">SIGNUP</a></li>
		</ul>
  </nav>


<!-- Login Form Of Customer -->
<form action="user_login" name="user_login" method="post" >
  <div class="imgcontainer"><center>
    <img src="images\WelcomeLogo.jpg" alt="Welcome" class="avatar" height="90" width="5"></center>
  </div>

  <div class="container">
    <label for="uname"><b>Email ID</b></label>
      <input type="text" name="uname" placeholder="enter email">

    <label for="psw"><b>Password</b></label>

    <input type="password"  name="pass" placeholder="enter password">
    <input type="submit" name="submit"  id="login" value="log in" style="background-color:  #800000; color: white; padding: 14px 20px;  margin: 8px 0; border: none; cursor: pointer; width: 100%;">
    <label>

    <input type="checkbox"  name="remember" > Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
 
    <button type="reset" class="cancelbtn" value="Cancel">Cancel</button>
    <button type="button" class="Forgotbtn" onclick="OpenNewWindow()" value="Forgot Password">Forgot Password</button>
    <a href="register.jsp">
    <button type="submit" class="Register"  name="submit" onclick="" value="Not A Member Register Now">Not A Member Register Now</button>
  </a>
  </div>
</form>


</body>
</html>