<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
		body{
     	   background-image: url(image/backgr.jpg);
           background-repeat:no-repeat;
           background-size:1920px 900px;
           color: #e6d86d;
        }
        
       
</style>
</head>
<body>
<form action=" " method="post">
<table class="center">

<tr><td>Four Digit PIN : </td>
     <td><input type="password" placeholder="Number between 0 to 9" name="pin" pattern="\d{4}" maxlength="4"  id="pin" required> </td>
     <td><input type="checkbox" onclick="myFunction()">Show Pin</td></tr>

<tr>
	<td><input type="submit" value="Login"></td></tr>
	
</table>
 </form>
</body>
</html>