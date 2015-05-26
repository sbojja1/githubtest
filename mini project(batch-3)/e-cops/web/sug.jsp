<%-- 
    Document   : sug
    Created on : Jan 1, 2002, 3:27:39 AM
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
         Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         Connection con=DriverManager.getConnection("jdbc:odbc:sss","","");
         Statement st=con.createStatement();
        int count=Integer.parseInt(request.getParameter("count"));
        for(int i=0;i<count;i++)
           {
           st.executeUpdate("update postproblem set suggestion='"+request.getParameter("sol"+i)+"' where regno="+(i+1)+"");
            }


            response.sendRedirect("viewcomplaints.jsp");

        %>
        </body>
   </html>
