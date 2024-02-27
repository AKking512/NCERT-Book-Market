<%-- 
    Document   : second
    Created on : Feb 24, 2024, 7:08:02 PM
    Author     : bmprasad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String uname = request.getParameter("name");
            String pwd = request.getParameter("password");
out.print(" Name  = " + request.getParameter("name") +"<BR>" );
out.print(" password  = " + request.getParameter("password") +"<BR>" );
Connection conx = null;
Statement stmt = null;
ResultSet rset = null;
try { 
             //conx = new ConTest().getConnection();
              Class.forName("com.mysql.cj.jdbc.Driver");

             conx = DriverManager.getConnection("jdbc:mysql://comp-3:3306/prince", "root", "Rishabh@1608");
             stmt = conx.createStatement();
             String qry = "insert into puser value ('" + uname+"','"+pwd+"')";
             out.println(" qry ? " + qry);
              stmt.execute( qry);
            } catch ( Exception exps){
            out.println(exps.getMessage());
            } finally {
                if ( conx !=null ){
                    conx.close();
            }
            }
            
        response. sendRedirect("https://ncert.nic.in/textbook.php");
%>
    </body>
</html>
