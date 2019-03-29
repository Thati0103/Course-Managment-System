//Login.jsp

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv ="Content-Type" content="text/hmtl; charset=ISO-8859-1">
<title>Login </title>
<script>
function validate()
{
	var username =document.form.username.value;
	var password =document.form.password.value;
	
	if(username==null || username=""){
		alert("Username cannot be blank");
		return false;
	}
	else if (password==null || password=""){
		alert("Password cannot be blank");
		return false;
	}
}
</script>
</head>
<body>
<div style="text-align:center"><h1> Login application in java using MVC and Mysql </h1> </div>
<br>
<form name ='form" action="LoginServlet" method="post" onsubmit="return validate()">

<table align="center">
	<tr> 
	<td>Username</td>
	<td><input type="text" name="username"/></td>
	</tr>
	<tr>
	<td>password </td>
	<td><input type="password" name="password" /></td>
	</tr>
	<td><span style="color:red"><%=(request.getAttribute("errMessage")==null)?"":request.getAtribute("errMessage")%></span></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Login"></input><input
type="reset" value="Reset"></input></td>
</tr>
</table>
</form>
</body>
</html>

