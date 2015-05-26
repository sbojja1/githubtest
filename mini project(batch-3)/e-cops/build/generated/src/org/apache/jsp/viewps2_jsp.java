package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class viewps2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=windows-1251\">\n");
      out.write("<title>Template 91</title>\n");
      out.write("<link href=\"css/style1.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"780\" bgcolor=\"#99ADD3\">\n");
      out.write("    <tr>\n");
      out.write("\t\t<td bgcolor=\"#162C52\" width=\"1\" rowspan=\"100\"><img src=\"spacer.gif\" width=\"1\" height=\"1\" alt=\"image\"></td>\n");
      out.write("\t\t<td><img src=\"images/mainlogo.GIF\" border=\"0\" width=\"352\" height=\"87\" alt=\"\"><img src=\"images/1_2.jpg\" border=\"0\" width=\"247\" height=\"87\" alt=\"\"><img src=\"images/1_3.jpg\" border=\"0\" width=\"181\" height=\"87\" alt=\"\"><br>\n");
      out.write("\t\t<img src=\"images/1_2.jpg\" border=\"0\" width=\"587\" height=\"52\" alt=\"\"><img src=\"images/m7.jpg\" border=\"0\" width=\"193\" height=\"52\" alt=\"\"><br>\n");
      out.write("\t\t<img src=\"images/2_1.jpg\" border=\"0\" width=\"250\" height=\"85\" alt=\"\"><img src=\"images/2_2.jpg\" border=\"0\" width=\"337\" height=\"85\" alt=\"\"><img src=\"images/2_3.jpg\" border=\"0\" width=\"193\" height=\"85\" alt=\"image\"><br>\n");
      out.write("\t\t<img src=\"images/3_1.jpg\" border=\"0\" width=\"250\" height=\"96\" alt=\"\"><img src=\"images/3_2.jpg\" border=\"0\" width=\"337\" height=\"96\" alt=\"\"><img src=\"images/3_3.jpg\" border=\"0\" width=\"193\" height=\"96\" alt=\"image\"></td>\n");
      out.write("\t\t<td bgcolor=\"#162C52\" width=\"1\" rowspan=\"100\"><img src=\"spacer.gif\" width=\"1\" height=\"1\"></td>\n");
      out.write("\t</tr>\n");
      out.write("<tr>\n");
      out.write("            <td>\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("            <td>\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        \t\t<td><img src=\"images/pymp.gif\" border=\"0\" width=\"43\" height=\"27\" alt=\"\"></td>\n");
      out.write("                        \t\t<td class=\"w2\">District News</td>\n");
      out.write("                        \t</tr>\n");
      out.write(" <tr>\n");
      out.write("                        \t\t<td><img src=\"images/t.gif\" border=\"0\" width=\"26\" height=\"7\" alt=\"\"></td>\n");
      out.write("                        \t\t<td><a href=\"login1.jsp\" class=\"t\"><img src=\"images/8.gif\" border=\"0\" width=\"120\" height=\"35\" alt=\"\"></a></td>\n");
      out.write("                    </tr>\n");
      out.write("                   \n");
      out.write("                </table>\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("                <img src=\"images/7.jpg\" border=\"0\" width=\"300\" height=\"267\" alt=\"\">\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("                <div style=\"margin-left: 200px;\">\n");
      out.write("        <form action=\"viewdb.jsp\" method=\"post\">\n");
      out.write("            <table bgcolor=\"#99ADD3\" align=\"center\" border=\"5\">\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                      PoliceStaion\n");
      out.write("                  </td>\n");
      out.write("\n");
      out.write("                  <td>\n");
      out.write("                      Address\n");
      out.write("                  </td>\n");
      out.write("\n");
      out.write("                  <td>\n");
      out.write("                      ContactNo\n");
      out.write("                  </td>\n");
      out.write("\n");
      out.write("                   <td>\n");
      out.write("                      ciname\n");
      out.write("                  </td>\n");
      out.write("\n");
      out.write("                  <td>\n");
      out.write("                      siname\n");
      out.write("                  </td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("            ");


            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:sss","","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from addps1");
              while(rs.next())
              {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    ");
      out.print(rs.getString(1));
      out.write("\n");
      out.write("                </td>\n");
      out.write("\n");
      out.write("                <td>\n");
      out.write("                   ");
      out.print(rs.getString(2));
      out.write("\n");
      out.write("                </td>\n");
      out.write("\n");
      out.write("                 <td>\n");
      out.write("                    ");
      out.print(rs.getInt(3));
      out.write("\n");
      out.write("                 </td>\n");
      out.write("\n");
      out.write("                <td>\n");
      out.write("                    ");
      out.print(rs.getString(4));
      out.write("\n");
      out.write("                </td>\n");
      out.write("\n");
      out.write("                <td>\n");
      out.write("                   ");
      out.print(rs.getString(5));
      out.write("\n");
      out.write("                </td>\n");
      out.write("                \n");
      out.write("                </tr>\n");
      out.write("           ");

          
            }
            
      out.write("\n");
      out.write("\n");
      out.write("        </table>\n");
      out.write("        </form>\n");
      out.write(" </div></td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </td>\n");
      out.write("            </tr>\n");
      out.write("           <tr>\n");
      out.write("          <td width=\"780\" height=\"1\" bgcolor=\"#162C52\" colspan=\"3\"><center><font color=\"white\"> Designed by <br>I.KRANTHI,M.PRATHYUSAHA,CH.KALYANI,T.ASWANI<br>ST.MARY'S WOMEN'S ENGINEERING COLLEGE,<br>BUDAMPADU</font></center></td>\n");
      out.write("           </tr>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
