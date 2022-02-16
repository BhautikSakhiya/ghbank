<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
 		body{
     	   background-image: url(image/backgr.jpg);
           background-repeat:no-repeat;
           background-size:1920px 900px;
           color: #e6d86d;
        }
        h2{
        	padding-top : 40px;
        	text-align: center;
        	font-size: 40px;
        	font-weight: bold;
        	color:#e6d86d;
        }
        h4 {
        	margin-top : -30px;
        	margin-bottom : 70px;
        	text-indent : 650px;
        	color:#e6d86d;
        }
        .center {
			text-align: center;
			font-size: 25px;
  			margin-left: auto;
  			margin-right: auto;
		}
		a {
 			color: #e6d86d;
 			text-align: center;
 			padding: 20px 20px;
 			text-decoration: none;
  			font-size: 20px;
		}
		
</style>
<script type="text/javascript">
function myFunction() {
	  var x = document.getElementById("pin");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
</script>
</head>
<body>
<form action="login" method="post">
<h2>GHS Bank</h2>
<h4>Money looks better in the bank then on your feet.</h4>
<br><br><br>
<table class="center">

<tr><td>  Enter Account number :</td>
 	 <td><input type="text" name="accountno" required></td></tr><br>

<tr><td>Four Digit PIN : </td>
     <td><input type="password" placeholder="Number between 0 to 9" name="pin" pattern="\d{4}" maxlength="4"  id="pin" required> </td>
     <td><input type="checkbox" onclick="myFunction()">Show Pin</td></tr>

<tr><td><a href="create.jsp">Create NEW ACCOUNT ?</a></td>
	<td><input type="submit" value="Login"></td></tr>
	
<tr><td>	<a href="forgotpaassword.jsp">Forgot Pin?</a></td></tr>
	
</table>
</form>
</body>
</html>