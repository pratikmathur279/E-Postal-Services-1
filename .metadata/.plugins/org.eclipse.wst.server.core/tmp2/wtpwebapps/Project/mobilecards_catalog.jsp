<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Postal Services</title>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
</head>
<body background="E:\Project\background_home.jpg">
	<h2>Mobile Cards : </h2>
	<table cellpadding="4" width="100%">
	<tr align="center" >
	<th>Product Name</th>
	<th>Cost</th>
	<th>Quantity</th>
	</tr>
<%
try
{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
	
	String string="select * from MCPRODUCTDETAILS";
	PreparedStatement ps=con.prepareStatement(string);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
	%>	
	<tr>
		
		<td align="center"><%=rs.getString("PRODUCTNAME") %></td>
		<td align="center">Rs. <%=rs.getString("Cost") %></td>
		<td align="center">Enter Quantity : <input type="text" value="" name="quantity"></td>
	</tr>
		<%
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
</table>
</body>
</html>