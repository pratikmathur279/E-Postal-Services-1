/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.26
 * Generated at: 2014-08-03 03:26:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class packets_005fdeleteproducts_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<title>E-Postal Services</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body background=\"E:\\Project\\background_home.jpg\">\r\n");
      out.write("\t\r\n");
      out.write("\t<form action=\"packets_deleteproducts1.jsp\" method=\"post\">\r\n");
      out.write("\t\r\n");
      out.write("\t<h2>Packets : </h2>\r\n");
      out.write("\t<table cellpadding=\"4\" width=\"100%\">\r\n");
      out.write("\t<tr align=\"center\" >\r\n");
      out.write("\t<th>Product ID</th>\r\n");
      out.write("\t<th>Product Name</th>\r\n");
      out.write("\t<th>Cost</th>\r\n");
      out.write("\t</tr>\r\n");

try
{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
	
	String string="select * from packetsproductdetails";
	PreparedStatement ps=con.prepareStatement(string);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
	
      out.write("\t\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<td align=\"center\">");
      out.print(rs.getString("PRODUCTID") );
      out.write("</td>\r\n");
      out.write("\t\t<td align=\"center\">");
      out.print(rs.getString("PRODUCTNAME") );
      out.write("</td>\r\n");
      out.write("\t\t<td align=\"center\">Rs. ");
      out.print(rs.getString("Cost") );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t\t");

	}

}
catch(SQLException e)
{
	e.printStackTrace();	
}
catch(ClassNotFoundException e)
{
	e.printStackTrace();	
}

      out.write("\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("<h4>Enter the product ID : <input type=\"text\" value=\"\" name=\"pid\">\r\n");
      out.write("<input type=\"submit\" value=\"Submit\">\r\n");
      out.write("</h4>\r\n");
      out.write("</form>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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
