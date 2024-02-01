

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
 * Servlet implementation class product_inf
 */
public class product_inf extends HttpServlet {
	Connection cn = null;
    Statement st = null;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 PrintWriter out = resp.getWriter();
	        HttpSession session = req.getSession();
	                     
	        String product_id = req.getParameter("product_id");
	        String image = req.getParameter("image");
	        String product_name = req.getParameter("product_name");
	        String company_name = req.getParameter("company_name");
	        String price = req.getParameter("price");
	        String country = req.getParameter("country");
	        String quantity = req.getParameter("quantity");
	        String total = req.getParameter("total");
	        String event = req.getParameter("submit");
	        
	        
	        out.println(product_id);
	        out.println(image);
	        out.println(product_name);
	        out.println(company_name);
	        out.println(price);
	        out.println(country);
	        out.println(quantity);
	        Database db = new Database();
	        String result = db.Connectdb();
	        out.println(result);
	        
	        if(event.equals("Add to cart"))
	        {
	            try
	            {
	                String sql = "insert into cart (user_id, product_id, image, product_name, company_name, price, country, quantity, total) values ('"+session.getAttribute("user_id")+"', '"+product_id+"','"+image+"', '"+product_name+"', '"+company_name+"', '"+price+"', '"+country+"', '"+quantity+"', '"+total+"')";
	                String insert = db.Insert(sql);
	                out.println(insert);
	                resp.sendRedirect("cart_page.jsp");
	            }
	            catch(Exception ex)
	            {
	                resp.setContentType("text/html");
	                out.println("   <script type=\"text/javascript\">   ");
	                out.println("   alert('"+ex.toString()+"');");
	                out.println("   location='product_inf.jsp';            ");
	                out.println("   </script>                           ");
	            }
	        }
	       
	        if(event.equals("Buy Now"))
	        {
	            
	        }
	        
	    }
	     
	
	
}
