<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
 <link type="text/css" rel="stylesheet" href="design.css" > 

<script type="text/javascript">

function del() 
{
	 var r=confirm("Do you want to Delete Account");
	    if (r)
	    {
	    	document.myform.action="Delete";
	    	document.myform.submit();
	    }
	    else{}
}

function edit() 
{
	 var r=confirm("Do you want to Edit Details");
	    if (r)
	    {
	    	document.myform.action="Edit";
	    	document.myform.submit();
	    }else{}
}
</script>

<style type="text/css">
table, th, td
{
	  border: 1px solid gray;
	  border-collapse: collapse;
}
</style>

<title>LoginSuccess</title>
</head>

<body class="body" >


<br><br><br><br><br><br>

 <h2 align="center" style="color: white;" >Welcome Dear ${user}</h2>
 
<br><br><br>

<form name="myform" method="post" >

<font color="white" >

<table align="center"> 

<tr>
<th>Select</th>
<th>Employee Id</th>
<th>UserName</th>
<th>Password</th>
<th>Name</th>
<th>AreaName</th>
<th>City</th>
<th>State</th>
<th>PinCode</th>
<th>Age</th>
<th>Mobile No</th>
<th>Salary</th>
</tr>

	<c:forEach items="${list}" var="e" >
		<tr>
		<td><input type="radio" name="empid" value="${e.empid }"> </td>
		<td align="center" > <c:out value="${e.empid }" />   </td>
		<td align="center" > ${e.username } </td>
		<td align="center" > ${e.password }</td>
		<td align="center" > ${e.name }</td>
		<td align="center" > ${e.addr.areaname } </td>
		<td align="center" > ${e.addr.cityname } </td>
		<td align="center" > ${e.addr.state } </td>
		<td align="center" > ${e.addr.pincode } </td>
		<td align="center" > ${e.age } </td>
		<td align="center" > ${e.mobileno } </td>
		<td align="center" > ${e.salary } </td>
		</tr>
	
	</c:forEach>
<tr>

</table>
<br>
</font>

<center>
<input type="button" value="Delete" class="button" onclick="del()"> <input type="button" value="Edit" class="button" onclick="edit()">   <a href="Login.jsp" ><input type="button" value="Logout" class="button"></a>
</center>
 <br><br>

<center>	
<font color="white" size="4" ><u><b> ${msg} </b></u></font>
</center>	
	
</form>

</body>
</html>