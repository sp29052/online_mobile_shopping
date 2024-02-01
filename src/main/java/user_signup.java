

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
 * Servlet implementation class user_signup
 */
public class user_signup extends HttpServlet {
	 Connection cn=null;
	    Statement st=null;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = resp.getWriter();
        String firstname= req.getParameter("firstname"); 
        String Addresslane1= req.getParameter("Addresslane1");
        String ContactNumber= req.getParameter("ContactNumber");
        String EmailAddress= req.getParameter("EmailAddress");
        String Password= req.getParameter("Password");
        String ConfirmPassword= req.getParameter("ConfirmPassword");
        String event= req.getParameter("submit");
       
        out.println(firstname);
        out.println(Addresslane1);
       
        out.println(ContactNumber);
        out.println(EmailAddress);
        out.println(Password);
        out.println(ConfirmPassword);
        out.println(event);
              
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);

    if(event.equals("Register"))
    {
        if(firstname.equals("")  || EmailAddress.equals("") || ContactNumber.equals("") || Addresslane1.equals("") ||Password.equals("")||ConfirmPassword.equals("") )
        {
               resp.setContentType("text/html");
               out.println("   <script type=\"text/javascript\">   ");
               out.println("   alert('Some Fields Are Empty');                ");
               out.println("   location='user_signup.jsp';            ");
               out.println("   </script>                           ");
        }
        else
        {
            if(Password.equals(ConfirmPassword))
            {
                try
                {
                    String sql = "insert into user_signup(firstname, EmailAddress, ContactNumber, Addresslane1, Password, ConfirmPassword)values('"+firstname+"',  '"+EmailAddress+"', '"+ContactNumber+"','"+Addresslane1+"', '"+Password+"','"+ConfirmPassword+"')";
                    String insert = db.Insert(sql);
                    out.println(insert);
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">   ");
                    out.println("   alert('Record Inserted Successfully');                ");
                    out.println("   location='user_login.jsp';            ");
                    out.println("   </script>                           ");
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">   ");
                    out.println("   alert('"+ex.toString()+"');                ");
                    out.println("   location='user_login.jsp';            ");
                    out.println("   </script>                           ");
                }
            }
            else
            {
              out.println("Password andConfirm password are not equal");
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">   ");
                    out.println("   alert('Password andConfirm password are not equal');                ");
                    out.println("   location='user_signup.jsp';            ");
                    out.println("   </script>                           ");
            
            }
            
            
        }
    
    } 
}
	
}
