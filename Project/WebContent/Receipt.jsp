<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-postal services</title>
</head>
<body background="background_home.jpg"> 
	<center>
	<u><h2>Receipt</h2></u>
	</center>
<%
try
{
	String username=(String)session.getAttribute("userid");
	
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
	
	String str1="select * from USERDETAILS where username='"+username+"'";
	PreparedStatement ps1=con.prepareStatement(str1);
	ResultSet rs1=ps1.executeQuery();
	while(rs1.next())
	{
%>
	<center>
	<table>
		<tr>
			<td><%=rs1.getString("fname") %></td>
		</tr>
		<tr>
			<td>Email Address : <%=rs1.getString("email") %></td>
		</tr>
		<tr>	
			<td>Address : <%=rs1.getString("addr1") %></td>
		</tr>
		<tr>	
			<td>       <%=rs1.getString("addr2") %></td>
		</tr>
		<tr>	
			<td><%=rs1.getString("city") %></td>
		</tr>
		<tr>	
			<td><%=rs1.getString("pincode") %></td>
		</tr>		
		</table>
		</center>
	<% }%>
	
	
	<table width="60%" cellpadding="4" align="center">
		<tr>
			<th>Product Name</th>
			<th>Cost</th>
		</tr>
 <%		

	String str="select productname,cost from cartitems";
	PreparedStatement ps=con.prepareStatement(str);
	ResultSet rs=ps.executeQuery();
	
	while(rs.next())
 	{
 		String productname=rs.getString("productname");
 		String cost=rs.getString("cost");
	%>
		<tr align="center">
 				<td><%=rs.getString("PRODUCTNAME")%></td>
 				<td><%=rs.getString("COST")%></td>
 			</tr>
	
 <% } 	
	String str2="delete from cartitems";
	PreparedStatement ps2=con.prepareStatement(str2);
	int i=ps2.executeUpdate();
	
	String str3="delete from paymentdetails";
	PreparedStatement ps3=con.prepareStatement(str3);
	int j=ps3.executeUpdate();
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