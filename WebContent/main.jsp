<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpSession"%>


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
        p{
        	margin-left: 70px;
       	  	font-size: 20px;
        	font-weight: bold;
       	  
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
        li {
 			display: inline-block;
  		  
  			color: #e6d86d;
		}
		a {
      		padding : 40px;
 			 overflow: hidden;
		}
		a {
 			color: #e6d86d;
 			text-align: center;
 			padding: 20px 20px;
 			text-decoration: none;
  			font-size: 20px;
		}
		a:hover {
			 font-weight: bold;
 			 background-color: #e6d86d;
 			 color: white;
		}
		a.active {
  			background-color: #b18c31;
  			color: white;
		}
		table {
       		padding : 50px;
       		font-size: 20px;
       		color: #e6d86d;
       }
		
</style>
</head>

<body>
<h2>GHS Bank</h2>
<h4>Money looks better in the bank then on your feet.</h4>

	<p> WelCome!<p>
	<p><% String accountno = (String)request.getSession().getAttribute("account");
	out.print("Account number is "+accountno);%></p>
	
	
<div id="navigation">
    <ul>
    <li><a href="balance.jsp">Check Balance</a></li>
    <li><a href="deposit.jsp">Deposit</a></li>
    <li><a href="withdraw.jsp">Withdraw</a></li>
    <li><a href="profile.jsp">Profile</a></li>
    </ul>
</div>
<table>
<tr>
	<td><strong>About us </strong><br> 
		Welcome to GHSBank.We're dedicated to giving you the very best of service, with a focus on customer service, your security.Founded in 2000 by Bhautik Sakhiya, GHSBank has come a long way from its beginnings in a starting location.</td>
	<td><strong>Results </strong><br> 
		This is Globel Business bank which is under business and finance category for your website design. Similar to progress reports, weekly, monthly and quarterly reports are constants in a benking setting. </td>
	<td><strong>Opportunities </strong><br>
 		Use the Opportunity Canvas when you already have a product and you’d just like to examine new features or capabilities. If you don’t have a product or revenue model in place yet, you may find a Business Model Canvas or Lean Canvas more helpful.</td>
</tr>
</table>


</body>
</html>