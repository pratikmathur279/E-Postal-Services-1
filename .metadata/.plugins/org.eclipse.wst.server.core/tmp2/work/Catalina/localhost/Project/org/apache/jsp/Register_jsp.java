/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.26
 * Generated at: 2014-08-02 08:35:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"StyleSheet\" type=\"text/css\" href=\"style.css\">\r\n");
      out.write("\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Register Page</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body background=\"E:\\Project\\background_home.jpg\">\r\n");
      out.write("\r\n");
      out.write("<h1>Welcome to e-Postal Services</h1>\r\n");
      out.write("<h3 color=\"red\">Please fill in the fields given below to register </h3>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<form method=\"post\" action=\"Register1.jsp\">\r\n");
      out.write("            <center>\r\n");
      out.write("            <table border=\"1\" width=\"50%\" cellpadding=\"5\">\r\n");
      out.write("                <thead>\r\n");
      out.write("               \r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th colspan=\"2\">Enter Information Here</th>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </thead>\r\n");
      out.write("                <tbody>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>First Name</td>\r\n");
      out.write("                        <td><input type=\"text\" name=\"fname\" value=\"\" /></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>Last Name</td>\r\n");
      out.write("                        <td><input type=\"text\" name=\"lname\" value=\"\" /></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>Email</td>\r\n");
      out.write("                        <td><input type=\"url\" name=\"email\" value=\"\" /></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>User Name</td>\r\n");
      out.write("                        <td><input type=\"text\" name=\"username\" value=\"\" required /></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td>Password</td>\r\n");
      out.write("                        <td><input type=\"password\" name=\"password\" value=\"\" /></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                    \t<td>Role</td>\r\n");
      out.write("                    \t<td><select name=\"role\">\r\n");
      out.write("                    \t<option value=\"customer\">Customer</option>\r\n");
      out.write("                    \t<option value=\"administrator\">Administrator</option>\r\n");
      out.write("                    \t<option value=\"postmaster\">Post Master</option>\r\n");
      out.write("                    \t</select>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                    \t<td>Gender</td>\r\n");
      out.write("                    \t<td>\r\n");
      out.write("                    \t<select name=\"gender\">\r\n");
      out.write("                    \t<option value=\"Male\" >Male</option>\r\n");
      out.write("                    \t<option value=\"Female\">Female</option>\r\n");
      out.write("                    \t</select>\t\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                    \t<td>Date of Birth</td>\r\n");
      out.write("                    \t<td>\r\n");
      out.write("                    \t<select name=\"day\">\r\n");
      out.write("                    \t<option value=\"1\">1</option>\r\n");
      out.write("                    \t<option value=\"2\">2</option>\r\n");
      out.write("                    \t<option value=\"3\">3</option>\r\n");
      out.write("                    \t<option value=\"4\">4</option>\r\n");
      out.write("                    \t<option value=\"5\">5</option>\r\n");
      out.write("                    \t<option value=\"6\">6</option>\r\n");
      out.write("                    \t<option value=\"7\">7</option>\r\n");
      out.write("                    \t<option value=\"8\">8</option>\r\n");
      out.write("                    \t<option value=\"9\">9</option>\r\n");
      out.write("                    \t<option value=\"10\">10</option>\r\n");
      out.write("                    \t<option value=\"11\">11</option>\r\n");
      out.write("                    \t<option value=\"12\">12</option>\r\n");
      out.write("                    \t<option value=\"13\">13</option>\r\n");
      out.write("                    \t<option value=\"14\">14</option>\r\n");
      out.write("                    \t<option value=\"15\">15</option>\r\n");
      out.write("                    \t<option value=\"16\">16</option>\r\n");
      out.write("                    \t<option value=\"17\">17</option>\r\n");
      out.write("                    \t<option value=\"18\">18</option>\r\n");
      out.write("                    \t<option value=\"19\">19</option>\r\n");
      out.write("                    \t<option value=\"20\">20</option>\r\n");
      out.write("                    \t<option value=\"21\">21</option>\r\n");
      out.write("                    \t<option value=\"22\">22</option>\r\n");
      out.write("                    \t<option value=\"23\">23</option>\r\n");
      out.write("                    \t<option value=\"24\">24</option>\r\n");
      out.write("                    \t<option value=\"25\">25</option>\r\n");
      out.write("                    \t<option value=\"26\">26</option>\r\n");
      out.write("                    \t<option value=\"27\">27</option>\r\n");
      out.write("                    \t<option value=\"28\">28</option>\r\n");
      out.write("                    \t<option value=\"29\">29</option>\r\n");
      out.write("                    \t<option value=\"30\">30</option>\r\n");
      out.write("                    \t<option value=\"31\">31</option>\r\n");
      out.write("                    \t</select>\r\n");
      out.write("                    \t<select name=\"month\">\r\n");
      out.write("                    \t<option value=\"January\">January</option>\r\n");
      out.write("                    \t<option value=\"February\">Febuary</option>\r\n");
      out.write("                    \t<option value=\"March\">March</option>\r\n");
      out.write("                    \t<option value=\"April\">April</option>\r\n");
      out.write("                    \t<option value=\"May\">May</option>\r\n");
      out.write("                    \t<option value=\"June\">June</option>\r\n");
      out.write("                    \t<option value=\"July\">July</option>\r\n");
      out.write("                    \t<option value=\"August\">August</option>\r\n");
      out.write("                    \t<option value=\"September\">September</option>\r\n");
      out.write("                    \t<option value=\"October\">October</option>\r\n");
      out.write("                    \t<option value=\"November\">November</option>\r\n");
      out.write("                    \t<option value=\"December\">December</option>\r\n");
      out.write("                    \t</select>\r\n");
      out.write("                    \t<select\tname=\"year\">\r\n");
      out.write("                    \t<option value=\"1990\">1990</option>\r\n");
      out.write("                    \t<option value=\"1991\">1991</option>\r\n");
      out.write("                    \t<option value=\"1992\">1992</option>\r\n");
      out.write("                    \t<option value=\"1993\">1993</option>\r\n");
      out.write("                    \t<option value=\"1994\">1994</option>\r\n");
      out.write("                    \t<option value=\"1995\">1995</option>\r\n");
      out.write("                    \t<option value=\"1996\">1996</option>\r\n");
      out.write("                    \t<option value=\"1997\">1997</option>\r\n");
      out.write("                    \t<option value=\"1998\">1998</option>\r\n");
      out.write("                    \t<option value=\"1999\">1999</option>\r\n");
      out.write("                    \t<option value=\"2000\">2000</option>\r\n");
      out.write("                    \t</select>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                    \t<td>Addr1</td>\r\n");
      out.write("                    \t<td><input type=\"text\" value=\"\" name=\"addr1\">\r\n");
      out.write("                    </tr>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("                    \t<td>Addr2</td>\r\n");
      out.write("                    \t<td><input type=\"text\" value=\"\" name=\"addr2\">\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                    \t<td>City</td>\r\n");
      out.write("                    \t<td><input type=\"text\" value=\"\" name=\"city\">\r\n");
      out.write("                    </tr>\t\t\t                    \r\n");
      out.write("                    <tr>\r\n");
      out.write("                    \t<td>Pincode</td>\r\n");
      out.write("                    \t<td><input type=\"text\" value=\"\" name=\"pincode\">\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                    \t<td>Phone Number</td>\r\n");
      out.write("                    \t<td><input type=\"text\" value=\"\" name=\"phoneno\">\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                    \t<td>Bank A/c No</td>\r\n");
      out.write("                    \t<td><input type=\"text\" value=\"\" name=\"accno\">\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                    \t<td>Bank Name</td>\r\n");
      out.write("                    \t<td><input type=\"text\" value=\"\" name=\"bankname\">\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td><input type=\"submit\" value=\"Submit\" /></td>\r\n");
      out.write("                        <td><input type=\"reset\" value=\"Reset\" /></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <td colspan=\"2\">Already registered!! <a href=\"Login.jsp\">Login Here</a></td>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                \r\n");
      out.write("                </tbody>\r\n");
      out.write("            </table>\r\n");
      out.write("            </center>\r\n");
      out.write("        </form>\r\n");
      out.write("\r\n");
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