

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
 * Servlet implementation class add_product
 */
public class add_product extends HttpServlet {
	 Connection cn=null;
	    Statement st=null;

   @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	   PrintWriter out = resp.getWriter();

       
       
       String image= req.getParameter("image");
       String company_name= req.getParameter("company_name");
       String product_name= req.getParameter("product_name");
       String price= req.getParameter("price");
       String country= req.getParameter("country");
       String ram= req.getParameter("ram");
       String camera= req.getParameter("camera");
       String event= req.getParameter("submit");
       
        
       out.println(image);
       out.println(company_name);
       out.println(product_name);
       out.println(price);
       out.println(country);
       out.println(ram);
       out.println(camera);
       out.println(event);
       
       Database db=new Database();
       String result=db.Connectdb();
       out.println(result);
       
        if(event.equals("ADD"))
   {
       if(image.equals("") || company_name.equals("") || product_name.equals("") || price.equals("") || country.equals("") || ram.equals("")||camera.equals(""))
       {
           resp.setContentType("text/html");
              out.println("   <script type=\"text/javascript\">   ");
              out.println("   alert('Some Fields Are Empty');                ");
              out.println("   location='add_product.jsp';            ");
              out.println("   </script>                           ");
       }
       else
       {
           
               try
               {
                   String sql = "insert into add_product(image, company_name, product_name, price, country,ram,camera)values('"+image+"','"+company_name+"','"+product_name+"','"+price+"','"+country+"','"+ram+"','"+camera+"')";
                   String insert = db.Insert(sql);
                   out.println(insert);
                   resp.setContentType("text/html");
                   out.println("   <script type=\"text/javascript\">   ");
                   out.println("   alert('Record Inserted Successfully');                ");
                   out.println("   location='add_product.jsp';            ");
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
