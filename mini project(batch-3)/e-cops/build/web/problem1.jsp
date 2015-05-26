<%-- 
    Document   : problem1
    Created on : Jan 1, 2002, 12:46:14 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>problem1</title>
    </head>
    <body>
        <%
        String Name=request.getParameter("Name");
        String Problem=request.getParameter("Problem");
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection con=DriverManager.getConnection("jdbc:odbc:sss","","");
       Statement st=con.createStatement();
       int n=0;
       ResultSet rs=st.executeQuery("select count(name) from postproblem");
       while(rs.next())
           {
           n=rs.getInt(1);
           }
       n=n+1;
        int no=st.executeUpdate("insert into postproblem values("+n+",'"+Name+"','"+Problem+"','no')");
       out.println("<center><h1>your registration number is"+n+"</center></h1>");
        %>
   </body>
</html>
