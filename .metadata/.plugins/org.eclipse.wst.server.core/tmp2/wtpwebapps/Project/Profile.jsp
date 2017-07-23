<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="E:\Project\background_home.jpg">
	
<%	
	ResultSet rs=null;
	try
	{		
		String userid=request.getParameter("username");
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
		String string="select * from emp where username='"+userid+"'";
		PreparedStatement ps=con.prepareStatement(string);
		rs=ps.executeQuery(string);
		if(rs.next())
		{
			String fname=rs.getString("1");
			String lname=rs.getString("lname");
			String email=rs.getString("email");
			String username=rs.getString("username");
			String password=rs.getString("password");
			String role=rs.getString("role");
			String gender=rs.getString("gender");
			String date=rs.getString("date");
			String month =rs.getString("month");
			String year=rs.getString("year");
			String addr1=rs.getString("addr1");
			String addr2=rs.getString("addr2");
			String city=rs.getString("city");
			String pincode=rs.getString("pincode");
			String phoneno=rs.getString("phoneno");
			String accno=rs.getString("accno");
			String bankname=rs.getString("bankname");
		}
	}
	catch(ClassNotFoundException e)
	{
		e.printStackTrace();
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
%>
<table>
	<tr>
		<td>First Name : </td>
		<td><%=rs.getString(1)%></td>	
	</tr>
	<tr>
		<td>Last Name : </td>
		<td><%=rs.getString(2)%></td>	
	</tr>
	<tr>
		<td>Email : </td>
		<td><%=rs.getString(3)%></td>	
	</tr>
	<tr>
		<td>Username : </td>
		<td><%=rs.getString(4)%></td>	
	</tr>
	<tr>
		<td>Password : </td>
		<td><%=rs.getString(5)%></td>	
	</tr>
	<tr>
		<td>Role : </td>
		<td><%=rs.getString(6)%></td>	
	</tr>
	<tr>
		<td>Gender : </td>
		<td><%=rs.getString(7)%></td>	
	</tr>
	<tr>
		<td>Date : </td>
		<td><%=rs.getString(8)%></td>	
	</tr>
	<tr>
		<td>Month : </td>
		<td><%=rs.getString(9)%></td>	
	</tr>
	<tr>
		<td>Year : </td>
		<td><%=rs.getString(10)%></td>	
	</tr>
	<tr>
		<td>Address Line 1 : </td>
		<td><%=rs.getString(11)%></td>	
	</tr>
	<tr>
		<td>Address Line 2 : </td>
		<td><%=rs.getString(12)%></td>	
	</tr>
	<tr>
		<td>City : </td>
		<td><%=rs.getString(13)%></td>	
	</tr>
	<tr>
		<td>Pincode : </td>
		<td><%=rs.getString(14)%></td>	
	</tr>
	<tr>
		<td>Phone Number : </td>
		<td><%=rs.getString(15)%></td>	
	</tr>
	<tr>
		<td>Account Number : </td>
		<td><%=rs.getString(16)%></td>	
	</tr>
	<tr>
		<td>Bank Name : </td>
		<td><%=rs.getString(17)%></td>	
	</tr>
</table>
</body>
</html>