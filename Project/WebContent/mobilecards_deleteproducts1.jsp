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

<%

try
{

	String mcpid=request.getParameter("mcpid");
	
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
	
	String str="delete from MCPRODUCTDETAILS where PRODUCTID='" + mcpid +"'";
	Statement st=con.createStatement();
	//PreparedStatement ps=con.prepareStatement();
	int i=st.executeUpdate(str);
	if(i!=0)
	{
		out.println("product deleted");
		//response.sendRedirect("carton_deleteproducts.jsp");
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
<br>
<a href="adminhome.jsp">Click here to go to Admin Home Page</a>
</body>

</html>