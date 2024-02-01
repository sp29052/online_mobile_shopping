

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
 * Servlet implementation class all_product
 */
public class all_product extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
	      
	      HttpSession session=req.getSession();
	      String event = req.getParameter("submit");
	      
	      String id=req.getParameter("product_id");
	      
	      
	      
	            Database db=new Database();
	            String result=db.Connectdb();
	            out.println(result);
	            
	            if(event.equals("View Product"))
	            {
	                session.setAttribute("id",id);
	                resp.sendRedirect("product_inf.jsp");
	            }
	    }

	}
