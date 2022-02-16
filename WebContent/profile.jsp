<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
        tr td {
        	padding-left: 20px;
        }
        a {
        	padding-left: 500px;
        }
</style>
<title>Insert title here</title>
</head>
<body>

<p><% String accountno = (String)request.getSession().getAttribute("account");
	out.print("Account number is "+accountno);%></p>

<table border="1">
<tr>
<td>Name</td>
<td>Mobile No.</td>
<td>Email</td>
<td>Date of Birth</td>
<td>Address</td>
<td>Pin</td>
</tr>
<%

Class.forName("com.mysql.cj.jdbc.Driver");
try{
Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","root");  
	Statement st = con.createStatement();
    ResultSet rs=st.executeQuery("select * from ghbank where accountno ="+ accountno);
    int count=0;
	while(rs.next()){
	%>
		<tr>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("no") %></td>
		<td><%=rs.getString("email") %></td>
		<td><%=rs.getString("dob") %></td>
		<td><%=rs.getString("address") %></td>
		<td><%=rs.getString("pin") %></td>
		</tr>
	<%
	}
	con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
</table>
</body>
</html>

