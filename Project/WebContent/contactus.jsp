<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
</head>
<body background="background_home.jpg">

<form method="post" action="contactus1.jsp" >
	       <h1 align="center">Customer Feedback</h1>
	     
            <table  align="center" border="0" cellpadding="5">
            
                    <tr>
                        
                        <td><font face="comic sans ms" size="2" COLOR="#006600">UserName :</td>
                        <td><input type="text" name="username" value="" size="15"/></td>
                    	
                    </tr>
                    <tr>
                        <td><font face="comic sans ms" size="2" COLOR="#006600">Query/Comments : </td>
                        <td><input type="text" name="comments" value="Enter your comments here" size="50"></td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    </tbody>
            </table>
</form>
</body>
</html>