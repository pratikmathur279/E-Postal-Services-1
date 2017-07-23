<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<HTML>
<HEAD>
<TITLE> e-shopping </TITLE>
</HEAD>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<BODY>
<%  
        try
	{
		
     	Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
	
		String userid=request.getParameter("T1");
		String pswd=request.getParameter("T2");
		
		String query="select * from admindetails where username='"+userid+"' and password='"+pswd+"'";
		PreparedStatement ps=con.prepareStatement(query);	
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{	
			response.sendRedirect("adminframe.jsp");
		}
		else
		{
			response.sendRedirect("adminlogin.jsp");
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

</BODY>
</HTML>
