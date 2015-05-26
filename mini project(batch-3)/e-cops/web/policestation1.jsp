<%-- 
    Document   : policestation1
    Created on : Jan 1, 2002, 3:01:06 AM
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
       String policestation=request.getParameter("policestation");
       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection con=DriverManager.getConnection("jdbc:odbc:sss","","");
       Statement st=con.createStatement();
       int no=st.executeUpdate("insert into policestation values('"+policestation+"')");
       if(no==1)
           {
       response.sendRedirect("policestation.jsp");
       }
 %>
    </body>
</html>
