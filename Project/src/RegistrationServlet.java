

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//@WebService("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String role=request.getParameter("role");
		String gender=request.getParameter("gender");
		String addr1=request.getParameter("addr1");
		String addr2=request.getParameter("addr2");
		String pincode=request.getParameter("pincode");
		String city=request.getParameter("city");
		String phoneno=request.getParameter("phoneno");
		String accno=request.getParameter("accno");
		String bankname=request.getParameter("bankname");
		ResultSet rs=null;
		 Connection con;
		 PreparedStatement ps=null;
		try
		{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			con=DriverManager.getConnection("jdbc:db2://localhost:50000/PostServ","USER","Barcelona");
		
			ps=con.prepareStatement("insert into userdetails(fname,lname,email,username,password,role,gender,addr1,addr2,city,pincode,phoneno,accno,bankname) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			rs=ps.executeQuery();
			ps.setString(1,"fname");
			ps.setString(2,"lname");
			ps.setString(3,"email");
			ps.setString(4,"username");
			ps.setString(5,"password");
			ps.setString(6,"role");
			ps.setString(7,"gender");
			ps.setString(8,"addr1");
			ps.setString(9,"addr2");
			ps.setString(10,"pincode");
			ps.setString(11,"city");
			ps.setString(12,"phoneno");
			ps.setString(13,"accno");
			ps.setString(14,"bankname");
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{}
		
	}

	} 
