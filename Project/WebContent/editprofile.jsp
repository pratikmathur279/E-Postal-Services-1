<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Postal Services</title>
<script language="JavaScript" >
function formValidation()  
        {
        var fname = document.profile.fname;
        var lname = document.profile.lname;
        var email=document.profile.email;
        var username=document.profile.username;
        var password = document.profile.password;
        var role=document.profile.role;	
        var gender=document.profile.gender;
        var day= document.profile.day;
        var month= document.profile.month;
        var year= document.profile.year;
        var addr1=document.profile.addr1;
        var addr2=document.profile.addr2;
        var city=document.profile.city;
        var pincode=document.profile.pincode;
        var pinreg=new RegExp("^[0-9]{6}$");
        var pinh=pinreg.exec(pincode.value);
        var phoneno=document.profile.phoneno;
        var phreg=new RegExp("^[0-9]{10}$");
        var rph=phreg.exec(phoneno.value);
        var accno=document.profile.accno;
       var accreg=new RegExp("^[0-9]{16}$");
        var acch=accreg.exec(accno.value);
        var bankname=document.profile.bankname;
        
        
        if(fname.value=="" || fname.value==null)
        {
        	alert("First Name field is left empty");
        	return false;
        }
        else if(!(allLetter(fname)))  
        { 
        	alert("enter valid First Name");
        	return false;
        }
        else if(lname.value=="" || lname.value==null)
        {
        	alert("Last Name field is left empty");
        	return false;
        }
        else if(!(allLetter(lname)))  
        {  
        	alert("enter valid lname");
        	return false;
        }
        else if(email.value=="" || email.value==null)
        {
        	alert("E-mail field is left empty");
        	return false;
        }
       else if(!(ValidateEmail(email)))  
        { 
        	alert("You have entered an invalid email address!");
        	return false;
        }
        else if(username.value=="" || username.value==null)
        {
        	alert("user name is left empty");
        	return false;
        }
        else if(!(allLetter(username)))  
        { 
        	alert("enter valid user name");
        	return false;
        }
        else if(password.value=="" || password.value==null)
        {
        	alert("password is left empty");
        	return false;
        }
        else if(!(password_validation(password,6,15)))  
        {
        	alert("password length should be between 6 and 15");
        	return false;
        }
        else if(role.value=="" ||  role.value==null)
        {
        	alert("role is not selected");
        	return false;
        }
        else if(gender.value=="" || gender.value==null)
        {
        	alert("gender is not selected");
        	return false;
        }
        else if(day.value=="" || day.value==null)
        {
        	alert("day is not selected");
        	return false;
        }
        else if(month.value=="" || month.value==null)
        {
        	alert("month is not selected");
        	return false;
        } 
        else if(year.value=="" || year.value==null)
        {
        	alert("year is not selected");
        	return false;
        }
        else if(!(datevalidation(day,month,year)))
        {
       		alert("Enter valid DOB");
       		return false;
       	}
        else if(addr1.value=="" || addr1.value==null)
        {
        	alert("address field 1 is left empty");
        	return false;
        }
        else if(addr2.value=="" || addr2.value==null)
        {
        	alert("address field 2 is left empty");
        	return false;
        }
        else if(city.value=="" || city.value==null)
        {
        	alert("city is left empty");
        	return false;
        }
        else if(!(allLetter(city)))
        {
        	alert("Entered city  is invalid");
        	return false;
        }
        else if(pincode.value=="" || pincode.value==null)
        {
        	alert("pincode field is left empty");
        	return false;
        }
         else if(!pinh) 
        { 
        	alert("Invalid Pin Number");    
        	return false;
        }
        else if(phoneno.value=="" || phoneno.value==null)
        {
        	alert("phone number is left empty");
        	return false;
        }
        else if(!rph) 
        { 
        	alert("Phone number should have only 10 digits");    
        	return false;
        }
       else if(accno.value=="" || accno.value==null)
        {
        	alert("account number is left empty");
        	return false;
        }
        else if(!acch) 
        { 
        	alert("Invalid Account Number");    
        	return false;
        }
      else if(bankname.value=="" || bankname.value==null)
        {
        	alert("bank name is left empty");
        	return false;
        }
        else if(!(allLetter(bankname)))  
        { 
        	alert("enter valid bank name");
        	return false;
        }
        return true;
        }// formValidation() method closed


        //method to validate first name should not have numbers
        function allLetter(a)  
        {   
        	var letters = /^[A-Za-z]+$/;  
        	if(a.value.match(letters))  
        	{  
        		return true;  
        	}  
        	else  
        	{    
        		return false;  
        	}  
        }
        
         function ValidateEmail(uemail)  
        {  
        	var emailreg=new RegExp("^[a-zA-Z][a-zA-Z0-9_.]*@[a-zA-Z][a-zA-Z0-9_.]*.[a-zA-Z][a-zA-Z0-9_.]{2}.[a-zA-Z][a-zA-Z0-9_.]{2}$|^[a-zA-Z][a-zA-Z0-9_.]*@[a-zA-Z][a-zA-Z0-9_.]*.[a-zA-Z][a-zA-Z0-9_.]{3}$");
        	var remail=emailreg.exec(uemail.value);
        	if(remail)  
        	{  
        		return true;  
        	}  
        	else  
        	{  	   
        		 return false;  
        	}  
        }
        
         
        function password_validation(a,b,c)
        {
        	if(a.value.length>=b && a.value.length<=c)
        	{
        		return true;
        	}
        	else
        	{
        		return false;
        	}
        }
        
        function datevalidation(day,month,year)
        {
        	var date1 = new Date(year,month,day);
        	//var date1=Date.parse(dob);
        	var currdate=new java.util.Date();
        	
        	if(date1>=currdate())
       		{
        		alert("please enter valid date");
        		return false;
        	}
        	else
       		{
        		return true;
       		}  	
        }
        
        </script>

</head>
<body background="background_home.jpg">
	<form onSubmit="return formValidation();" action="updateprofile.jsp" method="post" name="profile">
	
<u><h2 align="center" style="font-family: inherit;">Edit Profile</h2></u>
<%
	if((String)session.getAttribute("userid")==null)
	{
		response.sendRedirect("catalogloginfail.jsp");
	}
%>	
<%	
if((String)session.getAttribute("role")=="Customer")
{

	ResultSet rs=null;
	try
	{		
		String userid=(String)session.getAttribute("userid");
			
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
		String string="select * from userdetails where username='"+userid+"'";
		PreparedStatement ps=con.prepareStatement(string);
		rs=ps.executeQuery();
		if(rs.next())
		{
	
	
%>
		<font size="4" face="Comic con">
			<table cellpadding="3" align="left">
			<tr>
				<td>First Name : </td>
				<td><input type="text" name="fname" value="<%=rs.getString("fname")%>"></td>	
			</tr>
			<tr>
				<td>Last Name : </td>
				<td><input type="text" name="lname" value="<%=rs.getString("lname")%>"></td>	
			</tr>
			<tr>
				<td>Email : </td>
				<td><input type="text" name="email" value="<%=rs.getString("email")%>"></td>	
			</tr>
			<tr>
				<td>Username : </td>
				<td><input type="text" name="username" value="<%=rs.getString("username")%>" readonly="readonly"></td>	
			</tr>
			<tr>
				<td>Password : </td>
				<td><input type="password" name="password" value="<%=rs.getString("password")%>"></td>	
			</tr>
			<tr>
				<td>Role : </td>
				<td><input type="text" name="role" value="<%=rs.getString("role")%>" readonly="readonly"></td>	
			</tr>
			<tr>
				<td>Gender : </td>
				<td><input type="text" name="gender" value="<%=rs.getString("gender")%>" readonly="readonly"></td>	
			</tr>
			
			<tr>
				<td>DOB : </td>
				<td><input type="text" name="day" value="<%=rs.getString("day")%>" size="1"> / <input type="text" name="month" size="9" value="<%=rs.getString("month")%>"> / <input type="text" size="4" name="year" value="<%=rs.getString("year")%>"></td>	
			</tr>
			
				<td>Address Line 1 : </td>
				<td><input type="text" name="addr1" value="<%=rs.getString("addr1")%>"></td>	
			</tr>
			<tr>
				<td>Address Line 2 : </td>
				<td><input type="text" name="addr2" value="<%=rs.getString("addr2")%>"></td>	
			</tr>
			<tr>
				<td>City : </td>
				<td><input type="text" name="city" value="<%=rs.getString("city")%>"></td>	
			</tr>
			<tr>
				<td>Pincode : </td>
				<td><input type="text" name="pincode" value="<%=rs.getString("pincode")%>"></td>	
			</tr>
			<tr>
				<td>Phone Number : </td>
				<td><input type="text" name="phoneno" value="<%=rs.getString("phoneno")%>"></td>	
			</tr>
			<tr>
				<td>Account Number : </td>
				<td><input type="text" name="accno" value="<%=rs.getString("accno")%>"></td>	
			</tr>
			<tr>
				<td>Bank Name : </td>
				<td><input type="text" name="bankname" value="<%=rs.getString("bankname")%>"></td>	
			</tr>
	<tr></tr>
	
	<tr>
		<td><input type="submit" value="Update"></td>
		</tr>
	
		</table>

<%			
		}
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
		String userid=(String)session.getAttribute("userid");
			
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/POSTALSE","PRATI_000","FCBarcelona10");
		String string="select * from admindetails where username='"+userid+"'";
		PreparedStatement ps=con.prepareStatement(string);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
	
	
%>
		<font size="4" face="Comic con">
			<table cellpadding="3" align="left">
			<tr>
				<td>First Name : </td>
				<td><input type="text" name="fname" value="<%=rs.getString("fname")%>"></td>	
			</tr>
			<tr>
				<td>Last Name : </td>
				<td><input type="text" name="lname" value="<%=rs.getString("lname")%>"></td>	
			</tr>
			<tr>
				<td>Username : </td>
				<td><input type="text" name="username" value="<%=rs.getString("username")%>" readonly="readonly"></td>	
			</tr>
			<tr>
				<td>Password : </td>
				<td><input type="password" name="password" value="<%=rs.getString("password")%>"></td>	
			</tr>
			<tr>
				<td>Role : </td>
				<td><input type="text" name="role" value="<%=rs.getString("role")%>" readonly="readonly"></td>	
			</tr>
			
	
	<tr>
		<td><input type="submit" value="Update"></td>
		</tr>
	
		</table>

<%			
		}
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	
}
%>

</form>
</body>
</html>