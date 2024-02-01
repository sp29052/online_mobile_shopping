

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
 * Servlet implementation class update_product
 */
public class update_product extends HttpServlet {
	 Connection cn=null;
	    Statement st=null;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
        
        String image= req.getParameter("image");
        String product_id = req.getParameter("product_id");
        String company_name= req.getParameter("company_name");
        String product_name= req.getParameter("product_name");
        String price= req.getParameter("price");
        String country= req.getParameter("country");
        String event= req.getParameter("submit");
        
         
        out.println(image);
        out.println(company_name);
        out.println(product_name);
        out.println(price);
        out.println(country);
        out.println(event);
        
        Database db=new Database();
        String result=db.Connectdb();
        out.println(result);
        
      
    
    if(event.equals("UPDATE"))
    {
        if(image.equals("") || company_name.equals("") || product_name.equals("") || price.equals("") || country.equals("")  )
        {
               resp.setContentType("text/html");
               out.println("   <script type=\"text/javascript\">   ");
               out.println("   alert('Some Fields Are Empty');                ");
               out.println("   location='update_product.jsp';            ");
               out.println("   </script>                           ");
        }
        else
        {
                try
                {
                    String sql = "update add_product set image='"+image+"', company_name = '"+company_name+"', product_name = '"+product_name+"', price='"+price+"', country ='"+country+"' where product_id='"+product_id+"'  ";
                    String update = db.update(sql);
                    out.println(update);
                    
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">   ");
                    out.println("   alert('Product Updated');                ");
                    out.println("   location='update_product.jsp';            ");
                    out.println("   </script>                           ");
                    
                }
                catch(Exception ex)
                {
                    resp.setContentType("text/html");
                    out.println("   <script type=\"text/javascript\">   ");
                    out.println("   alert('"+ex.toString()+"');                ");
                    out.println("   location='update_product.jsp';            ");
                    out.println("   </script>                           ");
                }
        }
    
    }
    
    if(event.equals("DELETE"))
    {
        try
        {
            String sql = "delete from add_product where product_id ='"+product_id+"' ";
            String delete = db.delete(sql);
            
            resp.setContentType("text/html");
            out.println("   <script type=\"text/javascript\">   ");
            out.println("   alert('Product Deleted');                ");
            out.println("   location='update_product.jsp';            ");
            out.println("   </script>                           ");
        }
        catch(Exception ex)
        {
             resp.setContentType("text/html");
            out.println("   <script type=\"text/javascript\">   ");
            out.println("   alert('"+ex.toString()+"');                ");
            out.println("   location='update_product.jsp';            ");
            out.println("   </script>                           ");
        }
    }

}
	
}
