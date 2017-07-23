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
<body>
<%

try
{
	String mcpid=request.getParameter("mcpid");
	String mcpname=request.getParameter("mcpname");
	String quantity=request.getParameter("quantity");
	//File image=new File("image");
	
	//out.println("data received");
	
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
	
	//out.println("database conn received");
	
	String str="insert into MCPRODUCTDETAILS(productID,productname,quantity) values(?,?,?)";
	PreparedStatement ps=con.prepareStatement(str);
	
	ps.setString(1,mcpid);
	ps.setString(2,mcpname);
	ps.setString(3,quantity);
	
	//System.out.println("data saved");
	//FileInputStream fis = new FileInputStream(image);
	//ps.setBinaryStream(4, (InputStream)fis, (int)(image.length()));
	
	int i=ps.executeUpdate();
	if(i>0)
		System.out.println("update successful");
	else
		System.out.println("update not successful");
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
</body>
</html>