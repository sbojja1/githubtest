<%-- 
    Document   : problem
    Created on : Jan 1, 2002, 12:43:03 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<title>Template 91</title>
<script type="text/javascript">
  function validate()
  {
       var Name=document.frm.Name;
	   var Problem=document.frm.Problem;
	   if(name.value== "")
	   {
	   alert("hello plz enter the Name");
	   name.focus();
	   return false;
	   }
      if(problem.value== "")
	   {
	   alert("hello plz enter the Problem");
	   problem.focus();
	   return false;
	   }

  }


  </script>

<link href="css/style1.css" type="text/css" rel="stylesheet">
</head>
    <body>
        <%
        if(request.getParameter("msg")!=null)
            {
            out.println("<center><h1>your registration number is"+request.getParameter("msg")+"</center></h1>");
            }
         %>
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
                       <td><a href="login1.jsp" class="t"><img src="images/8.gif" border="0" width="120" height="35" alt=""></a></td>
                    </tr>
                    </table>
            </td>
            <td>
                     <img src="images/menutop.gif" border="0" width="149" height="149" alt="">
            </td>
            <td >
                <div style="margin-left: 200px;">
                        <h1><center>
         POSTPROBLEM </center>
       </h1>
       <hr>
       <br>
       <br>
       <br>
       <br>
       
        <form name="frm" action="problem1.jsp" method="post" onsubmit="return validate();">
            <table align="center" bgcolor="#99ADD3">

                <tr>
                    <td>
                        Name
                    </td>
                    <td>
                        <input type="text" name="Name">
                    </td>
                </tr>
                 <tr>
                    <td>
                       Problem
                    </td>
                    <td>
                       <textarea name="Problem" rows="5" cols="15"></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
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
