<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="design.css">
<meta charset="ISO-8859-1">
<title>SignUp Success</title>
</head>
<body class="body" >
<div>
<pre>
  <h2 style="color: white;" >Successfully Registered With Following Details</h2>
	<font color="white" >	
		<h3>  
	EmployeeId	 ${emp.empid }
	UserName	 ${emp.username }
	Password	 ${emp.password }
	Name	 	 ${emp.name }
	AreaName	 ${emp.addr.areaname }
	CiityName	 ${emp.addr.cityname }
	PinCode		 ${emp.addr.pincode }
	State		 ${emp.addr.state }
	Age		     ${emp.age }
	Salary		 ${emp.salary }
	MobileNo	 ${emp.mobileno }
		 </h3>   
	</font>	  
     <a href="Login.jsp" > <input type="button" value="Login Page" class="button" > </a>
</pre>
</div>
</body>
</html>