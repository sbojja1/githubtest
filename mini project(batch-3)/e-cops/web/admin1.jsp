<%-- 
    Document   : admin1
    Created on : Jan 1, 2002, 2:56:23 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin1</title>
    </head>
    <body>
        <%
       String Name=request.getParameter("Enter Name");
       String Password=request.getParameter("Enter Password");
       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection con=DriverManager.getConnection("jdbc:odbc:sss","","");
       Statement st=con.createStatement();
       int no=st.executeUpdate("insert into admin values('"+Name+"','"+Password+"')");
       if(Name.equals("admin")&&Password.equals("admin"))
         response.sendRedirect("adminauthorities.jsp");
       else
           out.println("choose correct Name&Password");
       %>
    </body>
</html>
