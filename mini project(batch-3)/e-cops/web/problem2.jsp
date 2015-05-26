<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Problem2</title>
    </head>
    <body>
        <table>
           <tr>
               <td>
                    Name
                </td>
            </tr>

            <tr>
                <td>
                    Problem
                </td>
            </tr>
           <%
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:sss","","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from postproblem");
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
