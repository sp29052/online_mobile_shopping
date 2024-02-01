

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
 * Servlet implementation class admin_order_list
 */
public class admin_order_list extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        
        String product_id = req.getParameter("product_id");
        String change_status = req.getParameter("change_status");
        String order_id = req.getParameter("order_id");
        
        String event = req.getParameter("submit");
        
        Database db = new Database();
        String result = db.Connectdb();
        
        if(event.equals("Change"))
        {
            String sql = "update orders set order_status='"+change_status+"' where order_id='"+order_id+"' ";
            String update = db.update(sql);
            out.println(update);
            resp.sendRedirect("admin_order_list.jsp");
        }
        
	}
}
