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
<body background="E:\Project\background_home.jpg">
	
	<!-- <form>
	
	<h2>Stamps : </h2>
	<table cellpadding="4" width="100%">
	<tr align="center">
	<th>Product ID</th>
	<th>Product Name</th>
	<th>Cost</th>
	</tr> -->
<%
try
{

	String pid=request.getParameter("pid");
	
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
	
	String string="delete from STAMPPRODUCTDETAILS where PRODUCTID='" + pid +"'";
	Statement st=con.createStatement();
	//PreparedStatement ps=con.prepareStatement();
	int i=st.executeUpdate(string);
	if(i!=0)
	{
		out.println("product deleted");
		//response.sendRedirect("stamps_deleteproducts.jsp");
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

<!--</table>
 
 <h4>Enter the product ID : <input type="text" value="" name="pid">
<input type="submit" value="Submit">
</h4>
</form>
-->

</body>

</html>