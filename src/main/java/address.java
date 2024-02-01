

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Servlet implementation class address
 */
public class address extends HttpServlet {
	  Connection cn=null;
	    Statement st=null;
	    
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 PrintWriter out = resp.getWriter();
     HttpSession session = req.getSession();
     
     
      String name= req.getParameter("name");
      String mobilenumber= req.getParameter("mobilenumber");
      String pincode= req.getParameter("pincode");
      String locality= req.getParameter("locality");
      String address= req.getParameter("address");
      String enterstate= req.getParameter("enterstate");
      String entercity= req.getParameter("entercity");
      String landmark= req.getParameter("landmark");
      String alternatemobilenumber= req.getParameter("alternatemobilenumber");
      String event= req.getParameter("submit");
  
                 
        out.println(name);
        out.println(mobilenumber);
        out.println(pincode);
        out.println(locality);
        out.println(address);
        out.println(enterstate);
        out.println(entercity);
        out.println(landmark);
        out.println(alternatemobilenumber);
        out.println(event);
               
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
    if(event.equals("CONTINUE"))
    {
        if(name.equals("") || mobilenumber.equals("") || pincode.equals("") || locality.equals("") || address.equals("") || enterstate.equals("") || entercity.equals("") || landmark.equals("") || alternatemobilenumber.equals("") )
        {
            resp.setContentType("text/html");
               out.println("   <script type=\"text/javascript\">   ");
               out.println("   alert('Some Fields Are Empty');                ");
               out.println("   location='address.jsp';            ");
               out.println("   </script>                           ");
        }
        else
        { 
                try
                {
                    String sql = "insert into address(user_id,name, mobile_number, pincode, locality, address, enter_city, enter_state, landmark, alternate_mobile_no)values('"+session.getAttribute("user_id")+"','"+name+"', '"+mobilenumber+"' , '"+pincode+"', '"+locality+"','"+address+"', '"+enterstate+"', '"+entercity+"','"+landmark+"', '"+alternatemobilenumber+"')";
                    String insert = db.Insert(sql);
                    out.println(insert);
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">   ");
                    out.println("   alert('Record Inserted Successfully');                ");
                    out.println("   location='payment1.jsp';            ");
                    out.println("   </script>                           ");
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }
          }
            
     }
    
    } 

}
