<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>e-postal services</title>
<script language="javascript">
   function use()
   {
      frm.T1.focus();
   }
   
function check()
{
   k=frm.T1.value.length; 
   j= frm.T2.value.length;
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
<BODY background="E:\Project\background_home.jpg" onLoad="use()">
	<form method=post action="adminlogin1.jsp" name=frm onSubmit="return check()">
	<center>
	 <FONT  face="comic sans ms" style="font-weight: bold;" size=3 COLOR=#006600>Admin Login Form</font> </Head>
	</center>
	
	<TABLE cellpadding="5" align="center" border=0 align="center">
<tr>
	<td rowspan="1"><FONT  face="comic sans ms" size="2" COLOR="#006600">UserName : </FONT></td>
	<td rowspan="1"><input type=text name="T1" size=15 maxlength=15></td>
</tr>
<tr></tr>
<tr>
	<td rowspan="1"><FONT  face="comic sans ms" size="2" COLOR="#006600">Password : </font></td>
	<td rowspan="1"><input type="password" name="T2" size=15 maxlength=15></td>
</tr>
<tr></tr>
<tr>
	<td><input type="submit" value="Login"> </td>
	<td><input type="reset" value="Reset"></td>
</tr>
<tr></tr>

 </TABLE>
<center>
<table>
	<tr>
		<td align="center">Click here for Customer Login : <a href="Login.jsp">Customer Login</a>

</table>
</center>
</form>
</BODY>
</HTML>
