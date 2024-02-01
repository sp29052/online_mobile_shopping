

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class user_login
 */
public class user_login extends HttpServlet {
	 Connection cn=null;
	    Statement st=null;
	     
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  PrintWriter out = resp.getWriter();
	        HttpSession session=req.getSession();
	        
	            String uname= req.getParameter("uname");
	            String pass= req.getParameter("pass");
	            String event= req.getParameter("submit");
	            
	             
	            out.println(uname);
	            out.println(pass);
	            out.println(event);
	         
	            Database db=new Database();
	            String result=db.Connectdb();
	            out.println(result);
	         
	         if(event.equals("log in"))
	         {
	             
	                if(uname.equals("")||pass.equals(""))
	                {
	                    out.println("some fields are empty");
	                         
	                    resp.setContentType("text/html");
	                    out.println("   <script type=\"text/javascript\">   ");
	                    out.println("   alert('User Name or Password id Empty');");
	                    out.println("   location='user_login.jsp';            ");
	                    out.println("   </script>                           ");
	                }
	                else
	                {
	                    try
	                    {
	                        Class.forName("com.mysql.jdbc.Driver");
	                        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_mobile_shopping","root","root");
	                        Statement st=cn.createStatement();
	                        String sql="select * from user_signup where EmailAddress='"+uname+"' && password='"+pass+"' ";
	                        ResultSet rs= st.executeQuery(sql);

	                        if(rs.next())
	                        {
	                            
	                            session.setAttribute("EmailAddress",rs.getString("EmailAddress"));
	                            session.setAttribute("user_id",rs.getString("id"));                            
	                            
	                            resp.setContentType("text/html");
	                            out.println("   <script type=\"text/javascript\">   ");
	                            out.println("   alert('Login Success');");
	                            out.println("   location='user_homepage.jsp';            ");
	                            out.println("   </script>                           ");
	                            
	                        }
	                        else
	                        {
	                            out.println("login failed");
	                            resp.setContentType("text/html");
	                            out.println("   <script type=\"text/javascript\"> ");
	                            out.println("   alert('login failed');");
	                            out.println("   location='user_login.jsp'; ");
	                            out.println("   </script>  ");
	                        }
	                    }
	                    catch(Exception ex)
	                    {
	                        out.println(ex.toString());
	                        resp.setContentType("text/html");
	                        out.println("   <script type=\"text/javascript\"> ");
	                        out.println("   alert('"+ex.toString()+"');");
	                        out.println("   location='user_login.jsp'; ");
	                        out.println("   </script>  ");
	                    }
	                }
	         
	         }
	      
	         
	         if(event.equals("Not A Member Register Now"))
	         {
	        	 resp.sendRedirect("user_signup.jsp");
	         }
	    }
	
}
