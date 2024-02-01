

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
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Servlet implementation class payment1
 */
public class payment1 extends HttpServlet {
	Connection cn=null;
	Statement st=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
   	 String sql2 =""; 
        String sql3 = "";
         PrintWriter out = resp.getWriter();
         HttpSession session = req.getSession();
       
        String name= req.getParameter("name");
        String credit= req.getParameter("credit");
        String expiry= req.getParameter("expiry");
        String cvv= req.getParameter("cvv");
        String event= req.getParameter("submit");

           out.println(name);
           out.println(credit);
           out.println(expiry);
           out.println(cvv);
           out.println(event);
        
            Database db=new Database();
            String result=db.Connectdb();
            out.println(result);
           
            
       if(event.equals("PAY"))
       {
           if(name.equals("") || credit.equals("") || expiry.equals("") || cvv.equals("")  )
           {
               resp.setContentType("text/html");
                  out.println("   <script type=\"text/javascript\">   ");
                  out.println("   alert('Some Fields Are Empty');                ");
                  out.println("   location='admin_signup.jsp';            ");
                  out.println("   </script>                           ");
           }
           else
           {
              
                   try
                   {
                       String sql = "insert into payment1(name, credit, expiry, cvv)values('"+name+"', '"+credit+"' ,  '"+expiry+"','"+cvv+"')";
                       String insert = db.Insert(sql);
                       out.println(insert);
                       
                       Connection cn1=null;
                       Statement st1=null;

                        Date date = new Date();
                        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                        String order_date = formatter.format(date);

                        
                        Class.forName("com.mysql.jdbc.Driver");
                        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Mobile_Shopping","root","root");
                        st = cn.createStatement();
                        String sql1 = "select * from cart where user_id = '"+session.getAttribute("user_id")+"' ";
                        ResultSet rs1 = st.executeQuery(sql1);
                           
                        while(rs1.next())
                        {
                           sql2 = "insert into orders(user_id, product_id, image, product_name, company_name, price, country, quantity, total, order_status, order_date)values('"+rs1.getString("user_id")+"', '"+rs1.getString("product_id")+"', '"+rs1.getString("image")+"','"+rs1.getString("product_name")+"', '"+rs1.getString("company_name")+"', '"+rs1.getString("price")+"','"+rs1.getString("country")+"','"+rs1.getString("quantity")+"','"+rs1.getString("total")+"', 'Pending' , '"+order_date+"')";
                           String insert2 = db.Insert(sql2);
                           out.println(insert2);
                        }
                           
                           sql3 = "delete from cart where user_id= '"+session.getAttribute("user_id") +"' ";
                           String delete = db.delete(sql3);
                           out.println(delete);
                           
                           
                           resp.setContentType("text/html");
                           out.println("   <script type=\"text/javascript\">   ");
                           out.println("   alert('Order Placed');");
                           out.println("   location='order_list.jsp';            ");
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
