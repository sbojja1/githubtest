<%--
    Document   : viewps2
    Created on : Jan 1, 2002, 12:45:02 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<title>Template 91</title>
<script type="text/javascript">
  function validate()
  {
       var PoliceStation=document.frm.PoliceStation;
	   var Address=document.frm.Address;
       var Contactno=document.frm.Contactno;
       var ciname=document.frm.ciname;
       var siname=document.frm.ciname;
	   if(policeStation.value== "")
	   {
	   alert("hello plz enter the PoliceStation");
	   policeStation.focus();
	   return false;
	   }
      if(address.value== "")
	   {
	   alert("hello plz enter the Address");
	   address.focus();
	   return false;
	   }
       if(contactno.value== "")
	   {
	   alert("hello plz enter the Contactno");
	   contactno.focus();
	   return false;
	   }
       if(ciname.value== "")
	   {
	   alert("hello plz enter the ciname");
	   ciname.focus();
	   return false;
	   }
       if(siname.value== "")
	   {
	   alert("hello plz enter the siname");
	   siname.focus();
	   return false;
	   }
  }


  </script>
<link href="css/style1.css" type="text/css" rel="stylesheet">
</head>
    <body>

        <table border="0" cellpadding="0" cellspacing="0" width="780" bgcolor="#99ADD3">
    <tr>
		<td bgcolor="#162C52" width="1" rowspan="100"><img src="spacer.gif" width="1" height="1" alt="image"></td>
		<td><img src="images/mainlogo.GIF" border="0" width="352" height="87" alt=""><img src="images/1_2.jpg" border="0" width="247" height="87" alt=""><img src="images/1_3.jpg" border="0" width="181" height="87" alt=""><br>
		<img src="images/1_2.jpg" border="0" width="587" height="52" alt=""><img src="images/m7.jpg" border="0" width="193" height="52" alt=""><br>
		<img src="images/2_1.jpg" border="0" width="250" height="85" alt=""><img src="images/2_2.jpg" border="0" width="337" height="85" alt=""><img src="images/2_3.jpg" border="0" width="193" height="85" alt="image"><br>
		<img src="images/3_1.jpg" border="0" width="250" height="96" alt=""><img src="images/3_2.jpg" border="0" width="337" height="96" alt=""><img src="images/3_3.jpg" border="0" width="193" height="96" alt="image"></td>
		<td bgcolor="#162C52" width="1" rowspan="100"><img src="spacer.gif" width="1" height="1"></td>
	</tr>
<tr>
            <td>
                <table>
                    <tr>
            <td>
                <table>
                    <tr>
                        		<td><img src="images/pymp.gif" border="0" width="43" height="27" alt=""></td>
                        		<td class="w2">District News</td>
                        	</tr>

                    <tr>
                        		<td><img src="images/t.gif" border="0" width="26" height="7" alt=""></td>
                        		<td><a href="adminauthorities.jsp" class="t"><img src="images/8.gif" border="0" width="120" height="35" alt=""></a></td>
                    </tr>
                    </table>
            </td>
            <td>
                <div style="margin-left: 200px;">
           <font color="white"><CENTER><h1> POLICESTATIONS DETAILS</h1></CENTER></font>
        <hr>
         <form name="frm" action="viewdb.jsp" method="post" onsubmit="return validate();">
        <table border="2" align="center" bgcolor="#99ADD3">
           <tr>
               <td>
                  PoliceStation
                </td>
                <td>
                    Address
                </td>
                <td>
                    ContactNo
                </td>
                <td>
                    ciname
                </td>
                <td>
                    siname
                </td>
            </tr>
           <%
            int i=0;
            int count=0;
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:sss","","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select PoliceStation,Address,ContactNo,ciname,siname from addps1");
            while(rs.next())
                {
             %>
             <tr>
                <td>
                  <input type="text"  name="ps<%=i%>" value="<%=rs.getString(1)%>" readonly>
                </td>
                <td>
                  <input type="text"  name="add<%=i%>" value="<%=rs.getString(2)%>" readonly>
                </td>
                <td>
                 <input type="text"  name="cno<%=i%>" value="<%=rs.getInt(3)%>" readonly>
                </td>
                <td>
                    <input type="text"  name="ciname<%=i%>" value="<%=rs.getString(4)%>">
                </td>
                <td>
                    <input type="text"  name="siname<%=i%>" value="<%=rs.getString(5)%>">
                </td>
               </tr>
               <%
               i++;
               count++;
              
               }
               %>
               <input type="hidden" name="count" value="<%=count%>">
           <tr>
                    <td colspan="5" align="center">
                        <input type="submit" value="Submit">
                    </td>
           </tr>
               </table>
         </form>
           </div></td>
                    </tr>
                </table>
            </td>
            </tr>
             <tr>
         <td width="780" height="1" bgcolor="#162C52" colspan="3"><center><font color="white"> Designed by <br>I.KRANTHI,M.PRATHYUSAHA,CH.KALYANI,T.ASWANI<br>ST.MARY'S WOMEN'S ENGINEERING COLLEGE,<br>BUDAMPADU</font></center></td>
            </tr>
      </table>
   </body>
</html>


           
