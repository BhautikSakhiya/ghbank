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
        .myDiv{
        	color:red;
        	font-size: 18px;
        }
        
        h1 {
        	font-size: 40px;
        	font-weight: bold;
        	text-align: center;
        }
		
		.center {
			text-align: center;
			font-size: 25px;
  			margin-left: auto;
  			margin-right: auto;
		}
		
		input {
			
			width:250px;
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
<form action="register " method="post">
<h1>Welcome to GHBank</h2>
<br> <br><br>
<table class="center">
<tr><td>Account Number : </td>
    <td> <input type="text" name="accountno"  maxlength="8" id="account" required > </td></tr>

<tr><td>Full Name : </td>
    <td> <input type="text" name="name" id="fname" required > </td></tr>
    
<tr><td>Mobile No : </td>
     <td><input type="text" name="no" maxlength="10" id="no" required> </td></tr>

<tr><td>EmailId :</td> 
     <td><input type="text" name="email" id="email" required></td>
      <td><div class="myDiv"> **Don't share your Emailid which will you enter here**</div> </td></tr>
        
<tr><td>Date of Birth : </td> 
     <td><input type="date" name="dob" id="dob" required> </td></tr>
     
<tr><td>Address :</td>
     <td><input type="text" name="address" id="address" required> </td></tr>

<tr><td>Four Digit PIN : </td>
     <td><input type="password" placeholder="Number between 0 to 9" name="pin" pattern="\d{4}" maxlength="4"  id="pin" required> </td></tr>
     <tr><td><input type="checkbox" onclick="myFunction()">Show Pin</td></tr>
     
<tr><td colspan="2">
     <input type="Submit" value="Submit"></td></tr>
     
</table>
</form>
</body>
</html>