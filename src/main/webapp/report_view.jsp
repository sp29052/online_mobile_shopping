<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
       
       String event=request.getParameter("submit");
       if(event!=null)
       {
           // Normal Report
            if(event.equals("User List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_mobile_shopping","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\user_list.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
           
           
       }
           
            if(event!=null)
            {
                // Normal Report
                 if(event.equals("Order List"))
                 {
                     Connection cn = null;
                     try 
                     {
                         Class.forName("com.mysql.jdbc.Driver");
                         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_mobile_shopping","root","root");

                     } 
                     catch (Exception ex) 
                     {
                         ex.printStackTrace();
                     }

                     File reportFile = new File(application.getRealPath("Report\\order_list.jasper"));//your report_name.jasper file
                     Map parameters = new HashMap();
                     byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                     response.setContentType("application/pdf"); 
                     response.setContentLength(bytes.length);
                     ServletOutputStream outStream = response.getOutputStream();
                     outStream.write(bytes, 0, bytes.length);
                     outStream.flush();
                     outStream.close();
                            
                }
           
           
       }
            
            
            
            
            
            
            
            
            
            
            
            if(event!=null)
            {
                // Normal Report
                 if(event.equals("Address List"))
                 {
                     Connection cn = null;
                     try 
                     {
                         Class.forName("com.mysql.jdbc.Driver");
                         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_mobile_shopping","root","root");

                     } 
                     catch (Exception ex) 
                     {
                         ex.printStackTrace();
                     }

                     File reportFile = new File(application.getRealPath("Report\\address_list.jasper"));//your report_name.jasper file
                     Map parameters = new HashMap();
                     byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                     response.setContentType("application/pdf"); 
                     response.setContentLength(bytes.length);
                     ServletOutputStream outStream = response.getOutputStream();
                     outStream.write(bytes, 0, bytes.length);
                     outStream.flush();
                     outStream.close();
                            
                }
           
           
       }
            
            
            
            
            if(event!=null)
            {
                // Normal Report
                 if(event.equals("Cart List"))
                 {
                     Connection cn = null;
                     try 
                     {
                         Class.forName("com.mysql.jdbc.Driver");
                         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_mobile_shopping","root","root");

                     } 
                     catch (Exception ex) 
                     {
                         ex.printStackTrace();
                     }

                     File reportFile = new File(application.getRealPath("Report\\cart_list1.jasper"));//your report_name.jasper file
                     Map parameters = new HashMap();
                     byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                     response.setContentType("application/pdf"); 
                     response.setContentLength(bytes.length);
                     ServletOutputStream outStream = response.getOutputStream();
                     outStream.write(bytes, 0, bytes.length);
                     outStream.flush();
                     outStream.close();
                            
                }
           
           
       }
       
            
            
            
            if(event!=null)
            {
                // Normal Report
                 if(event.equals("Payment List"))
                 {
                     Connection cn = null;
                     try 
                     {
                         Class.forName("com.mysql.jdbc.Driver");
                         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_mobile_shopping","root","root");

                     } 
                     catch (Exception ex) 
                     {
                         ex.printStackTrace();
                     }

                     File reportFile = new File(application.getRealPath("Report\\payment_list.jasper"));//your report_name.jasper file
                     Map parameters = new HashMap();
                     byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                     response.setContentType("application/pdf"); 
                     response.setContentLength(bytes.length);
                     ServletOutputStream outStream = response.getOutputStream();
                     outStream.write(bytes, 0, bytes.length);
                     outStream.flush();
                     outStream.close();
                            
                }
           
           
       }
       
        %> 
       
</body>
</html>