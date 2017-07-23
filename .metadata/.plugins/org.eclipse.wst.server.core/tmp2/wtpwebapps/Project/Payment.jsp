<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
 <%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Postal Services</title>
</head>
<body background="background_home.jpg">
	<u><h2 align="center" >Payment Details</h2></u>
<form action="Payment1.jsp" method="post">			
<% 

	try
	{
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
		
		String str="Select sum(cost) as total from cartitems";
		PreparedStatement ps=con.prepareStatement(str);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
	
			out.println("The total amount to be paid is : "+rs.getString("total"));
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
	<br><br>

	<table  bordercolor="white" width="50%" height="80%" cellpadding="4">
		<tr>
			<td>Enter the Name as on Card : </td>
			<td><input type="text" name="cardname" value="" size="30"></td>
		</tr>
		<tr>
			<td>Select the type of card : </td>
			<td><select name="cardtype">
			<option value="">Select</option>
			<option value="Credit Card">Credit Card</option>
			<option value="Debit Card">Debit Card</option>
			</select>
		</tr>
		<tr>
			<td>Enter Debit/Credit Card Number : </td>
			<td><input type="text" name="cardno" value="" size="30" ></td>
		</tr>
		<tr>
			<td>Enter the CVV Number : </td>
			<td><input type="password" value="" name="cvv" size="8" maxlength="3"></td>
		</tr>
		<tr>
			<td>Enter Expiry date of card : </td>
			<td><select name="month">
		<option value="">Select</option>
                    	<option value="January">January</option>
                    	<option value="February">February</option>
                    	<option value="March">March</option>
                    	<option value="April">April</option>
                    	<option value="May">May</option>
                    	<option value="June">June</option>
                    	<option value="July">July</option>
                    	<option value="August">August</option>
                    	<option value="September">September</option>
                    	<option value="October">October</option>
                    	<option value="November">November</option>
                    	<option value="December">December</option>
                    	</select>
                    	<select	name="year">
		<option value="">Select</option>
                    	<option value="2013">2013</option>
                    	<option value="2014">2014</option>
                    	<option value="2015">2015</option>
                    	<option value="2016">2016</option>
                    	<option value="2017">2017</option>
                    	<option value="2018">2018</option>
                    	<option value="2019">2019</option>
                    	<option value="2020">2020</option>
                    	<option value="2021">2021</option>
                    	<option value="2022">2022</option>
                    	<option value="2023">2023</option>
                    	<option value="2024">2024</option>
                    	<option value="2025">2025</option>
                    	</select>
				
			</td>
		</tr>
		<tr>
			<td align="center"><input type="submit" value="   Proceed To Pay   " height="100%" width="100%" size="100"></td>
			<td align="center"><input type="reset" value="Reset"></td>
		</tr>
		</table>
</form>
</body>
</html>