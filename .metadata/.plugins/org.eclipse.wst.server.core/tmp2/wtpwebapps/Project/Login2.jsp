<%@  page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Postal Services</title>
</head>
<body background="E:\Project\background_home.jpg">

<%

try
{
	String userid = request.getParameter("username");
	String pass = request.getParameter("password");
	 
	Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
		
		if(userid==null || pass==null || userid.equals("") || pass.equals(""))
		{
			
			
					response.sendRedirect("Login.jsp");
		}
		else
		{
			String string="select username,password from userdetails where username='"+userid+"' and password='" + pass + "'";
			PreparedStatement st = con.prepareStatement(string);
			ResultSet rs = st.executeQuery();
			
				if(rs.next())
	               { 
	                   userid=rs.getString(1);
	                   session.setAttribute("userid",userid);
	               		response.sendRedirect("Homelogout.jsp");
	               }
				
				
			else
			{
				response.sendRedirect("Login2.jsp");
				
			}
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