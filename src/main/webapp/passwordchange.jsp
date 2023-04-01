<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css files/passwordchangepage.css">
<script src="jquery-3.6.0.min/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body>
	<div class="content">
 		<div class="center category">
		<p class="category">Reset Password</p>
        </div>
        <form action="passchangeoperation.jsp">	
        <div class="form">
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="label-text">Email</label>
  		<input type="text" name="email" class="form-control" id="formGroupExampleInput" placeholder="Email" required>
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">New Password</label>
  		<input type="password" name="npass" class="form-control" id="formGroupExampleInput" placeholder="password" required>
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">Confirm Password</label>
  		<input type="password" name="cpass" class="form-control" id="formGroupExampleInput" placeholder="Confirm password" required>
		</div>
		<div class="center">
		<a href=""><button class="btn btn-primary  center ">Submit</button></a>
		</div>
		</div >
		</form>
		<div class="help-link center">
		<a  style="text-decoration: none;"  href="loginpage.jsp">Login</a>
		</div>
	</div>
</body>
</html>