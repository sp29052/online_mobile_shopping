

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
 * Servlet implementation class cart_page
 */
public class cart_page extends HttpServlet {

    Connection cn = null;
    Statement st = null;
    
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
                
        String user_id = req.getParameter("user_id");
        String event = req.getParameter("submit");
        
        if(event.equals("Continue shopping"))
        {
            resp.sendRedirect("all_product.jsp");
        }
        
        if(event.equals("Buy Now"))
        { 
            
            resp.sendRedirect("address.jsp");
        }
    }
     
	}
	

