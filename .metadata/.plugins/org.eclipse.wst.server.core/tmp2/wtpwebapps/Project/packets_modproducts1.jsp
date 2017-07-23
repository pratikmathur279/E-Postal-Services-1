<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<title>E-Postal Services</title>
</head>
<body background="background_home.jpg">
	<form method="post" action="packets_update.jsp">
<%
try
{

	String pid=request.getParameter("pid");
	
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
	
	String string="select * from PACKETSPRODUCTDETAILS where PRODUCTID='" + pid +"'";
	PreparedStatement ps=con.prepareStatement(string);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{	
%>
	<table>
		<tr>
			<td>Product ID : </td>
			<td><input type="text" name="pid" value="<%=rs.getString("productID") %>" readonly="readonly"></td>	
		</tr>
		<tr>
			<td>Product Name : </td>
			<td><input type="text" name="pname" value="<%=rs.getString("productname")%>"></td>	
		</tr>
		<tr>
			<td>Description : </td>
			<td><input type="text" name="desc" value="<%=rs.getString("description") %>"></td>	
		</tr><tr>
			<td>Cost : </td>
			<td><input type="text" name="cost" value="<%=rs.getString("cost") %>"></td>	
		
	</table>

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
<table>
<tr>
	<td><input type="submit" value="Modify"></td>
</tr>
</table>
</form>
</body>

</html>