<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Postal Services</title>
</head>
<body background="E:\Project\background_home.jpg">

<%
try
{
	String cardname=request.getParameter("cardname");
	String cardtype=request.getParameter("cardtype");
	String cardno=request.getParameter("cardno");
	String cvv=request.getParameter("cvv");
	String month=request.getParameter("month");
	String year=request.getParameter("year");
	
	
	String username=(String)session.getAttribute("userid");
	 
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
	
	String string="insert into paymentdetails(username,cardname,cardtype,cardnumber,cvv,month,year) values(?,?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(string);
	ps.setString(1,username);
	ps.setString(2,cardname);
	ps.setString(3,cardtype);
	ps.setString(4,cardno);
	ps.setString(5,cvv);
	ps.setString(6,month);
	ps.setString(7,year);
	
	int i=ps.executeUpdate();
	
	if(1!=0)
	{
		response.sendRedirect("paymentgateway.jsp");
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
%>
</body>
</html>