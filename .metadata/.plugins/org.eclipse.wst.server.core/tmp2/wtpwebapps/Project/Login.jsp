<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<title>Login Page</title>
<script language="text/javascript">

function check()
{
   k=frm.username.value.length; 
   j= frm.password.value.length;
   if( (k <=0 ) || ( j<=0))
   {
		 if(k<=0)
	 	{
			alert('Enter  UserName');
		 	frm.T1.value=""; 
			frm.T1.focus();
			return false;
		   }
		if(j<=0)
		 {
			alert('Enter  Password');
			frm.T2.value="";
			frm.T2.focus();
			return false;
		   }
		   else
		   {
		   return true;
		   }
   }
   }
  </script>

</head>
<body background="E:\Project\background_home.jpg">
		
		<form method="post" action="Login2.jsp" onSubmit="return check()">
	<center>
            <table border="0" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2"><FONT  face="comic sans ms" size=3 COLOR=#006600>Customer Login Form</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        
                        <td><font face="comic sans ms" size="2" COLOR="#006600">UserName :</td>
                        <td><input type="text" name="username" value="" size="15"/></td>
                    	
                    </tr>
                    <tr>
                        <td><font face="comic sans ms" size="2" COLOR="#006600">Password : </td>
                        <td><input type="password" name="password" value="" size="15"/></td>
                    </tr>
                    <tr>
                    	<td><font face="comic sans ms" size="2" COLOR="#006600">Role : </td>
                    	<td><select name="role">
                    	<option value="customer">Customer</option>
                    	<option value="administrator">Administrator</option>
                    	<option value="postmaster">Post Master</option>
                    	</select>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    </tbody>
            </table>
           <table>
           <tr>
                        <td colspan="2">Yet Not Registered!! <a href="Register.jsp">Register Here</a></td>
                    </tr>
            </table>
            <table>
                
                    <tr>
                    	<td colspan="2">If you are an Admin, login here : <a href="adminlogin.jsp">Admin Login</a></td>
                    </tr>
                
           </table>
            </center>
        </form>

</body>
</html>