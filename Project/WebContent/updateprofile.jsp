<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if((String)session.getAttribute("role")=="Customer")
{
	try
	{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String role = request.getParameter("role");
		String gender = request.getParameter("gender");
		String day = request.getParameter("day");
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String city = request.getParameter("city");
		String pincode = request.getParameter("pincode");
		String phoneno = request.getParameter("phoneno");
		String accno = request.getParameter("accno");
		String bankname = request.getParameter("bankname");

	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
	String string="update userdetails set username='"+username+"',password='"+password+"',fname='"+fname+"',lname='"+lname+"',email='"+email+"',role='"+role+"',day='"+day+"',month='"+month+"',year='"+year+"',addr1='"+addr1+"',addr2='"+addr2+"',city='"+city+"',pincode='"+pincode+"',phoneno='"+phoneno+"',gender='"+gender+"',accno='"+accno+"',bankname='"+bankname+"' where username='"+username+"'";
	Statement st = con.createStatement();
	 
 	int i= st.executeUpdate(string);

	 if(i!=0)
	{
		response.sendRedirect("updateprofilesuccess.jsp");
	}
	 else
	{
		out.println("Not Executed");
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
}
else
{
	try
{
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String role = request.getParameter("role");
	
Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
String string="update admindetails set username='"+username+"',password='"+password+"',fname='"+fname+"',lname='"+lname+"',role='"+role+"' where username='"+username+"'";
Statement st = con.createStatement();
 
 int i= st.executeUpdate(string);

 if(i!=0)
{
	response.sendRedirect("updateprofilesuccess.jsp");
}
 else
{
	out.println("Not Executed");
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
}
%>

</body>
</html>