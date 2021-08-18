
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link type="text/css" rel="stylesheet" href="design.css">

<style type="text/css">

input
{
	 border: 2px solid pink;
  	 border-radius: 10px;	
}

</style>

<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>

<body class="body">

<br><br><br><br><br>
<div>
 <h2 align="center" style="color: white;">Login Here</h2>
</div>

<form action="log" method="post" >
<div>
<table align="center">

<font class="ft" >
<tr>
<th><font color="white" >UserName </font></th>
<td> <input type="text" name="username" placeholder="Enter Username"  required="required"></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<th><font color="white" >Password</font></th>
<td> <input type="password" name="password" placeholder="Enter Password"  required="required"></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<td colspan="3" >
 &nbsp&nbsp <input type="submit" class="button"  value="Login">
<input type="reset"  class="button" value="Reset">
<a href="register" > <input class="button" type="button" value="Register"></a>
</td>
</tr>

</font>
</table>
</div>
</form>

<br><br>

<div>
<center>	
<font color="white" size="3" ><u><b> ${msg}  </b></u></font>
</center>	
</div>

</body>
</html>