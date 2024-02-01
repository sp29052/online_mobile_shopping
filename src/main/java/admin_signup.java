

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Servlet implementation class admin_signup
 */
public class admin_signup extends HttpServlet {
	Connection cn=null;
    Statement st=null;
    
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  PrintWriter out = resp.getWriter();

          String companyname= req.getParameter("companyname");
          String email= req.getParameter("email");
          String firstname= req.getParameter("firstname");
          String lastname= req.getParameter("lastname");
          String addressline1= req.getParameter("addressline1");
          String addresssline2= req.getParameter("addresssline2");
          String city= req.getParameter("city");
          String state= req.getParameter("state");
          String pincode= req.getParameter("pincode");
          String contactno= req.getParameter("contactno");
          String password= req.getParameter("password");
          String confirmpassword= req.getParameter("confirmpassword");
          String event= req.getParameter("submit");
          
           
          out.println(companyname);
          out.println(email);
          out.println(firstname);
          out.println(lastname);
          out.println(addressline1);
          out.println(addresssline2);
          out.println(city);
          out.println(state);
          out.println(pincode);
          out.println(contactno);
          out.println(password);
          out.println(confirmpassword);
          out.println(event);
               
               
          Database db=new Database();
          String result=db.Connectdb();
          out.println(result);
               
               

  if(event.equals("Register"))
      {
          if(companyname.equals("") || email.equals("") || firstname.equals("") || lastname.equals("") || addressline1.equals("") || addresssline2.equals("") || city.equals("") || state.equals("") || pincode.equals("") || contactno.equals("")||password.equals("")||confirmpassword.equals("") )
          {
                 resp.setContentType("text/html");
                 out.println("   <script type=\"text/javascript\"> ");
                 out.println("   alert('Some Fields Are Empty');  ");
                 out.println("   location='admin_signup.jsp'; ");
                 out.println("   </script>  ");
          }
          else
          {
              if(password.equals(confirmpassword))
              {
                  try
                  {
                      String sql = "insert into admin_signup(companyname, email, firstname, lastname, addressline1, addresssline2, city, state, pincode, contactno, password, confirmpassword)values('"+companyname+"', '"+email+"' , '"+firstname+"', '"+lastname+"','"+addressline1+"','"+addresssline2+"', '"+city+"', '"+state+"','"+pincode+"','"+contactno+"','"+password+"','"+confirmpassword+"')";
                      String insert = db.Insert(sql);
                      out.println(insert);
                      
                      resp.setContentType("text/html");
                      out.println("   <script type=\"text/javascript\"> ");
                      out.println("   alert('Signup up successfull');  ");
                      out.println("   location='admin_login.jsp'; ");
                      out.println("   </script>  ");
                 
                  }
                  catch(Exception ex)
                  {
                      out.println(ex.toString());
                      resp.setContentType("text/html");
                      out.println("   <script type=\"text/javascript\"> ");
                      out.println("   alert('"+ex.toString()+"');  ");
                      out.println("   location='admin_signup.jsp'; ");
                      out.println("   </script>  ");
                  }
              }
              else
              {
                  out.println("Password andConfirm password are not equal");
                  resp.setContentType("text/html");
                  out.println("   <script type=\"text/javascript\"> ");
                  out.println("   alert('Password andConfirm password are not equal');  ");
                  out.println("   location='admin_signup.jsp'; ");
                  out.println("   </script>  ");
              
              }
              
              
          }
      
      } 



   }  
	}

