<%-- 
    Document   : RegHandler
    Created on : Jan 1, 2002, 1:11:33 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>Registration</title>
    </head>
    <body>
        <%
         String Name=request.getParameter("Name");
        String FatherorHusbandName=request.getParameter("FatherorHusbandName");
         String Gender=request.getParameter("Gender");
        String Address=request.getParameter("Address");
        String ContactNo=request.getParameter("ContactNo");
        String PoliceStations=request.getParameter("PoliceStations");
        String Email=request.getParameter("Email");
        String Problem=request.getParameter("Problem");
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection con=DriverManager.getConnection("jdbc:odbc:sss","","");
       Statement st=con.createStatement();
       int no= st.executeUpdate("insert into reg values('"+Name+"','"+FatherorHusbandName+"','"+Gender+"','"+Address+"','"+ContactNo+"','"+PoliceStations+"','"+Email+"','"+Problem+"')");
        if(no==1)
           {
       response.sendRedirect("register.jsp");
       }
%>
</body>
</html>
