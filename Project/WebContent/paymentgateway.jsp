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
<body>
	<form action="paymentgateway1.jsp">	
		<table border="2" height="100%" width="100%"></table>
		<h1 align="center" style="color: Blue">Payment Gateway</h1>
		<table border="2" height="100%" width="100%"></table>
		<img height="10%" width="10%" src="Paypal.png">
<%
try
{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");

	String string="select username,cardnumber from paymentdetails";
	PreparedStatement ps=con.prepareStatement(string);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{

%>
		<table width="500">
		<tr>
			<td>Your username is :</td>
			<td><%=rs.getString("username") %>
		</tr>
		<tr>
			<td>Your Card Number is : </td>
			<td><%=rs.getString("cardnumber") %>
		</tr>
		<tr>
			<td>Enter your login password to confirm order : </td>	
			<td><input type="password" value="" name="pwd"></td>
		</tr>
		<tr>
			<td><input type="submit" value=" Confirm "> </td>
		</tr>
		</table>			
<%
	}
}
catch(SQLException e)
{
	e.printStackTrace();	
}
%>
</form>
</body>
</html>