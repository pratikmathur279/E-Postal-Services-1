<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Postal Services</title>
</head>
<body background="E:\Project\background_home.jpg">
<center>
<table border="1" width="100%" height="100%">
<tr>
	<!-- <font color="red" size="18" face="Ariel">
	 --><td width="100%" align="left"><img background="E:\Project\background_home.jpg" height="10%" width="10%" src="E:\Project\PostOffice_logo.png">E-Postal Services</td>
	</font>
</tr>
</table>
</center>
<h1>Welcome to e-Postal Services</h1>
<% 
	String userid=(String)session.getAttribute("userid");
	out.println("Welcome " + userid);
%>

<a href="Logout.jsp">Logout</a>

</body>
	
</html>