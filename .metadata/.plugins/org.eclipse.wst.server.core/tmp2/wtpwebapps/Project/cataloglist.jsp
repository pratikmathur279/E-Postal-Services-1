<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Postal Services</title>
</head>
<body background="E:\Project\background_home.jpg">
<%
	if(session.getAttribute("userid")==null)
	{
		response.sendRedirect("catalogloginfail.jsp");
	}
%>	
<h3 style="font-family: sans-serif;">Select the type of product : </h3>
<a href="stamps_catalog.jsp">Stamps</a><br>
<a href="postcards_catalog.jsp">Postcards</a><br>
<a href="packets_catalog.jsp">Packets</a><br>
<a href="cartons_catalog.jsp">Cartons</a><br>
<a href="mobilecards_catalog.jsp">Mobile Cards</a><br>

</body>
</html>