<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="javascript">
   function use()
   {
      frm1.T1.focus();
   }

   function check()
   {
   a=frm1.spid.value.length; 
   b=frm1.spname.value.length;
   c=frm1.quantity.value.length;
   if( (a<=0 )||( b<=0)||( c<=0))
        {
		alert('Incomplete Information');
		return false;
       }
       else
       if(a>=6)
       {
         alert('Product ID max size is 5');
         return false;
        }
        else
        if(b>=11)
        {
        alert('Product name max size is 10');
        return false;
        }
		else
	    {   
          return true;
         }
     }
  </script>

</head>
<body onload="return use()" background="E:\Project\background_home.jpg">
	<form method="post" action="postcards_addproducts1.jsp" onsubmit="return check()">
			<center>
			<h3>Enter New Postcard Details</h3>
				<table border="1" width="50%">
					<tr>
						<td>Enter Product ID : </td>
						<td><input type="text" name="ppid" value="">
					</tr>
					<tr>
						<td>Enter Product Name : </td>
						<td><input type="text" name="ppname" value=""> 
					</tr>
					<tr>
						<td>Enter Product Image : </td>
						<td background="white"><input type="file" id="image">
					</tr>
					<tr>
						<td>Quantity : </td>
						<td><input type="text" value="" name="quantity"></td>
					</tr>
					<tr>
						<td><input type="submit" value="Submit"></td>
						<td><input type="reset" value="Reset"></td>
					</tr>
				</table>
			</center>
	</form>
</body></html>