<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>

<link type="text/css" rel="stylesheet" href="design.css" >

<title>Update Data</title>
</head>

<body class="body" >

<br><br><br><br>
 <h1 align="center" style="color: white;" >Edit Your Data</h1>
<br><br>
<form action="Update" method="post" >

<table align="center" >	

<tr>

<th><font color="white">EmployeeID</font></th>
<td><input readonly="readonly" name="empid" class="textbox"  value="${e.empid }" ></td>
</tr>	
	
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
	
<th><font color="white">PinCode</font></th>
<td><input readonly="readonly" name="pincode" class="textbox"  value="${e.addr.pincode }" ></td>
</tr>	
	
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>	

<th><font color="white">UserName</font></th>
<td><input type="text" name="username" class="textbox"  value="${e.username }" ></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<th><font color="white">Password</font></th>
<td><input type="text" name="password" class="textbox"  value="${e.password }" ></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<th><font color="white">Name</font></th>
<td><input type="text" name="name" class="textbox" value="${e.name }" ></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<th><font color="white">Age</font></th>
<td><input type="text" name="age" class="textbox"  value="${e.age }" ></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<th><font color="white">MobileNo</font></th>
<td><input type="text" name="mobileno" class="textbox" value="${e.mobileno } " ></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<th><font color="white">Salary</font></th>
<td><input type="text" name="salary" class="textbox" value="${e.salary }" ></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<th><font color="white">AreaName</font></th>
<td><input type="text" name="areaname" class="textbox" value="${e.addr.areaname } " ></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<th><font color="white">CityName</font></th>
<td><input type="text" name="cityname" class="textbox" value="${e.addr.cityname }" ></td>
</tr>
	
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<th><font color="white">State</font></th>
<td><input type="text" name="state" class="textbox" value="${e.addr.state }" ></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>	
	
<tr>
<td colspan="3" >
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" class="button" value="Update">
<input type="reset" class="button" value="Reset">
<a href="editcancel"><input type="button" class="button" value="Cancel"></a>
</td>
</tr>	
</table>	

<br>

<center>	
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<font color="white" size="4" ><u><b> ${msg} </b></u></font>
</center>	
			


</body>
</html>