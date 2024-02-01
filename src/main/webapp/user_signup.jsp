
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>SELLER REGISTRATION</title>
  <link rel="stylesheet" type="text/css" href="css/user_login.css">
  <link rel="stylesheet" type="text/css" href="../CSS/Loginformcss.css">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
  
  <script src="validation.js"></script>
</head>
<body>
  <header>
    <h1>Online Mobile STORE</h1>
  </header>
    <nav> 
    <ul>
			            <li><a href="../index.jsp ">HOME</a></li>
                         <li><a href="login.jsp"> LOGIN</a></li>
                         <li><a href="register.jsp"> SIGNUP</a></li>
		</ul>
  </nav>
 
    
<!-- FORM FOR USER REGISTRATION -->

       <form name="user_signup" action="user_signup" method="post">

    <div class="container">
        
        
        
            <label><b>User Name</b></label>
            
            <input type="text" placeholder="Enter Shop Name" name="firstname" required>
            
       
       
          <label for="uname"><b>Address</b></label>
          <textarea rows="5" maxlen="200" name="Addresslane1" cols="200"  placeholder="Enter Address"></textarea>
          
          <label for="uname"><b>Contact Number</b></label>
          <input type="text" placeholder="Enter Contact Number" name="ContactNumber" maxlength="10" onkeypress="return isNumberKey(event)">
          
          <label for="uname"><b>EmailAddress</b></label>
          <input type="text" placeholder="EmailAddress" name="EmailAddress"  >
          
          <label for="psw"><b>Password</b></label>
          <input type="password" placeholder="Enter Password" name="Password"   >
          
          <label for="psw"><b>Confirm Password</b></label>
          <input type="password" placeholder="Confirm Password" name="ConfirmPassword"   >
          
          <center>
              <input type="checkbox"  name="remember" onclick="WriteCookie()">Remember me 
              <div class="container">
          <input type="submit" name="submit"  id="register" value="Register" class="B4 ">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="reset"  name="submit"  id="cancel"   value="Cancel"  class="B5 " >
          </div>
          </center>   
       		</div>
    </form>

<footer>
    <center> <p> </p></center>
  
  </footer> 
</body>
</html>



