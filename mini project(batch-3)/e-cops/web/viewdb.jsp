<%-- 
    Document   : viewdb
    Created on : Jan 1, 2002, 1:44:30 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         int count=Integer.parseInt(request.getParameter("count"));
         Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         Connection con=DriverManager.getConnection("jdbc:odbc:sss","","");
         Statement st=con.createStatement();
         for(int i=0;i<count;i++)
         {
         int  no=st.executeUpdate("insert into addps1 values('"+request.getParameter("ps"+i)+"','"+request.getParameter("add"+i)+"',"+request.getParameter("cno"+i)+",'"+request.getParameter("ciname"+i)+"','"+request.getParameter("siname"+i)+"')");
         }
      response.sendRedirect("viewps.jsp");
 %>
    </body>
</html>
