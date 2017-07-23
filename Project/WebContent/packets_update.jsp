<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<title>Insert title here</title>
</head>
<%

try
{
	String productname = request.getParameter("pname");
	String description = request.getParameter("desc");
	String cost = request.getParameter("cost");
	String pid=request.getParameter("pid");
	
	Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
String string="update packetsproductdetails set productID='"+pid+"',productname='"+productname+"',description='"+description+"',cost='"+cost+"' where productid='"+pid+"'";
Statement st = con.createStatement();
 
 int i= st.executeUpdate(string);

 if(i!=0)
{
	response.sendRedirect("updateproductsuccess.jsp");
}
 else
{
	response.sendRedirect("updatefail.jsp");
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

</body>
</html>