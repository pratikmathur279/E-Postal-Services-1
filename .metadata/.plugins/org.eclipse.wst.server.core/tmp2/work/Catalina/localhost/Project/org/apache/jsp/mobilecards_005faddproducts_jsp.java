/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.26
 * Generated at: 2014-07-27 09:27:45 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mobilecards_005faddproducts_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("   function use()\r\n");
      out.write("   {\r\n");
      out.write("      frm1.T1.focus();\r\n");
      out.write("   }\r\n");
      out.write("\r\n");
      out.write("   function check()\r\n");
      out.write("   {\r\n");
      out.write("   a=frm1.spid.value.length; \r\n");
      out.write("   b=frm1.spname.value.length;\r\n");
      out.write("   c=frm1.quantity.value.length;\r\n");
      out.write("   if( (a<=0 )||( b<=0)||( c<=0))\r\n");
      out.write("        {\r\n");
      out.write("\t\talert('Incomplete Information');\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("       }\r\n");
      out.write("       else\r\n");
      out.write("       if(a>=6)\r\n");
      out.write("       {\r\n");
      out.write("         alert('Product ID max size is 5');\r\n");
      out.write("         return false;\r\n");
      out.write("        }\r\n");
      out.write("        else\r\n");
      out.write("        if(b>=11)\r\n");
      out.write("        {\r\n");
      out.write("        alert('Product name max size is 10');\r\n");
      out.write("        return false;\r\n");
      out.write("        }\r\n");
      out.write("\t\telse\r\n");
      out.write("\t    {   \r\n");
      out.write("          return true;\r\n");
      out.write("         }\r\n");
      out.write("     }\r\n");
      out.write("  </script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"return use()\" background=\"E:\\Project\\background_home.jpg\">\r\n");
      out.write("\t<form method=\"post\" action=\"mobilecards_addproducts1.jsp\" onsubmit=\"return check()\">\r\n");
      out.write("\t\t\t<center>\r\n");
      out.write("\t\t\t<h3>Enter New Mobile Cards Details</h3>\r\n");
      out.write("\t\t\t\t<table border=\"1\" width=\"50%\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>Enter Product ID : </td>\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"text\" name=\"mcpid\" value=\"\">\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>Enter Product Name : </td>\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"text\" name=\"mcpname\" value=\"\"> \r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>Enter Product Image : </td>\r\n");
      out.write("\t\t\t\t\t\t<td background=\"white\"><input type=\"file\" id=\"image\">\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>Quantity : </td>\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"text\" value=\"\" name=\"quantity\"></td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"submit\" value=\"Submit\"></td>\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"reset\" value=\"Reset\"></td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t</center>\r\n");
      out.write("\t</form>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
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
