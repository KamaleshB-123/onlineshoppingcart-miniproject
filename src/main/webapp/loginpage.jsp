<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css files/loginpage.css">
<script src="jquery-3.6.0.min/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>UserLogin</title>
</head>
<body>

 	<div class="content">
 		<div class="center category">
		<p class="category">User Login</p>
        </div>
        <form action="logincheck.jsp">	
        <div class="form">
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="label-text">Email</label>
  		<input type="text" name="euname" class="form-control" id="formGroupExampleInput" placeholder="Email" required>
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">Password</label>
  		<input type="password" name="pass" class="form-control" id="formGroupExampleInput" placeholder="password" required>
		</div>
		<div class="center">
		<a href=""><button class="btn btn-primary  center ">Submit</button></a>
		</div>
		</div >
		</form>
		<hr>
		<div class="help-link center">
		<a  href="usersignup.jsp">Create a new User</a>
		<a  href="passwordchange.jsp">I Forgot Password</a>
		</div>
	</div>
</body>
</html>