<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Postal Services</title>
</head>
<body>
<% 
try
{
	String pwd=request.getParameter("pwd");
	String passwd=(String)session.getAttribute("password");
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
	
	response.sendRedirect("Receipt.jsp");
	
	/* else
	{
		response.sendRedirect("paymentgateway.jsp");
 	
	} */
}
catch(SQLException e)
{
	e.printStackTrace();
}
%>
</body>
</html>