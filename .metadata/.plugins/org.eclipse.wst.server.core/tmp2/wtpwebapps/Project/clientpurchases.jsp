<%@page language="java"%>
<%@page import="java.sql.*"%>
<form method="post">
<table border="1">
<tr><th>Name</th><th>Cost</th><th>Quantity</th></tr>
<%

System.out.println("hello");

/* String pname=request.getParameter("productname");
String pcost=request.getParameter("cost");
 */
 String quantity=request.getParameter("quantity");
ResultSet rs=null;
//out.println(pname);

try 
{
	System.out.println("hello1");

	Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection conn = DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE", "PRATI_000","FCBarcelona10");
String query = "insert into ITEMSELECTED(name,cost,quantity) values(?,?,?)";
PreparedStatement st = conn.prepareStatement(query);
//st.setString(1,pname);
//st.setString(2,pcost);
st.setString(3,quantity);
System.out.println("hello2");

int i=st.executeUpdate();
if(i!=0)
{
	System.out.println("hello4");
	%>
	<tr>
		<td><%-- <input type="text" name="name" value="<%=rs.getString("pname")%>"> --%></td>
		<td><%-- <input type="text" name="cost" value="<%=rs.getString("pcost")%>"> --%></td>
		<td><input type="text" name="quantity" value="<%=rs.getString("quantity")%>"></td>
	</tr>
	
	<tr>
		<td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
	</tr>
	<%
	
}
else
{	
	System.out.println("hello3");	
}

}
catch(SQLException e)
{
	e.printStackTrace();
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</table>
</form>