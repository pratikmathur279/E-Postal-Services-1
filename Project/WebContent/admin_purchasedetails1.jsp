<%@page import="com.ibm.db2.jcc.am.SqlException"%>
<%@page import="com.ibm.db2.jcc.am.SqlClientInfoException"%>
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
<body>
<%
try
{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");

	String sday=request.getParameter("sday");
	String smonth=request.getParameter("smonth");
	String syear=request.getParameter("syear");
	String eday=request.getParameter("sday");
	String emonth=request.getParameter("emonth");
	String eyear=request.getParameter("eyear");
	
	String sdate=syear+"-"+smonth+"-"+sday;
	String edate=eyear+"-"+emonth+"-"+eday;
	
	String str="select * from purchasedetails where date between sdate and edate";
	PreparedStatement ps=con.prepareStatement(str);	
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		System.out.println(rs.getString("productid") + rs.getString("productname") + rs.getString("quantity") + rs.getString("sdate") + rs.getString("edate"));
	}
}
catch(SqlException e)
{
	e.printStackTrace();
}
%>	
</body>
</html>