

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
 * Servlet implementation class order_list
 */
public class order_list extends HttpServlet {
	  Connection cn = null;
	    Statement st = null;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
         
        String order_id = req.getParameter("order_id");
        
        String event = req.getParameter("submit");
        
        Database db = new Database();
        String result = db.Connectdb();
        
        
        
        
        if(event.equals("Cancel Order"))
        {
                try
                {     
                    String sql = "delete from orders where order_id = '"+order_id+"' ";
                    String delete = db.delete(sql);
                    out.println(delete);
                    
                 resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                  out.println("alert('Product Deleted successfully');     ");
                  out.println("location='order_list.jsp';  ");
             out.println("</script>               ");
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }
            }
        }
        
        
        
        
        
        
    
	}


