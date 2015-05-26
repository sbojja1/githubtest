<%-- 
    Document   : addps
    Created on : Jan 1, 2002, 1:00:20 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
       <%
        String PoliceStation=request.getParameter("PoliceStation");
        String Address=request.getParameter("Address");
        String ContactNo=request.getParameter("ContactNo");
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:sss","","");
        Statement st=con.createStatement();
        int n=st.executeUpdate("insert into addps values('"+PoliceStation+"','"+Address+"','"+ContactNo+"')");
        if(n==1)
            {
            response.sendRedirect("addps.jsp");
            }
        %>
    </body>
</html>