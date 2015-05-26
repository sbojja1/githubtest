<%-- 
    Document   : admin2
    Created on : Jan 1, 2002, 3:00:26 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin2</title>
    </head>
    <body>
        <table bgcolor="pink">
        
        <%
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:sss","","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from admin");
            while(rs.next())
              {
            %>
            <tr>
                <td>
                    <%=rs.getString(1)%>
                </td>
                <td>
                  <%=rs.getString(2)%>
                </td>
            </tr>
            <%
            }
            %>
        </table>
    </body>
</html>
