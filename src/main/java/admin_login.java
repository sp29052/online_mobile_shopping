

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class admin_login
 */
public class admin_login extends HttpServlet {
	Connection cn=null;
    Statement st=null;
    
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = resp.getWriter();

        String uname= req.getParameter("uname");
        String pass= req.getParameter("pass");
        String event= req.getParameter("submit");
         
        out.println(uname);
        out.println(pass);
        out.println(event);
     
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
         
        if(event.equals("Login"))
        {
            if(uname.equals("")||pass.equals(""))
            {
                out.println("Some fields is empty");
                resp.setContentType("text/html");
                out.println("   <script type=\"text/javascript\">   ");
                out.println("   alert('Some Fields Are Empty');                ");
                out.println("   location='admin_login.jsp';            ");
                out.println("   </script>                           ");
            }
            else
            {
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_mobile_shopping","root","root");
                    Statement st = cn.createStatement();

                    String sql = "select * from admin_signup where email='"+uname+"' && password='"+pass+" ' ";
                    ResultSet rs = st.executeQuery(sql);

                    if(rs.next())
                    {
                        out.println("Login Successful");
                        resp.setContentType("text/html");
                        out.println("   <script type=\"text/javascript\">   ");
                        out.println("   alert('Login Successful');                ");
                        out.println("   location='admin_homepage.jsp';            ");
                        out.println("   </script>                           ");
                    }
                    else
                    {
                        resp.setContentType("text/html");
                        out.println("   <script type=\"text/javascript\">   ");
                        out.println("   alert('Incorrect Email or Password');                ");
                        out.println("   location='admin_login.jsp';            ");
                        out.println("   </script>                           ");
                    }

                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">   ");
                    out.println("   alert('"+ex.toString()+"');                ");
                    out.println("   location='admin_login.jsp';            ");
                    out.println("   </script>                           ");
                }
            }
      }
}
	}
