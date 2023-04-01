<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css files/userprofile.css">
<script src="jquery-3.6.0.min/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>User profile</title>
</head>
<body>
<div class="content">
 		<div class="center category">
		<p class="category">Edit Profile</p>
        </div>
        <form action="userupdate.jsp">	
        <div class="form">
        <div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">User Name</label>
  		<input type="text" name="Name" value="<%=request.getParameter("Name") %>" class="form-control" id="formGroupExampleInput" placeholder="User Name">
		</div>
        <div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">First Name</label>
  		<input type="text" name="Fname" value="<%=request.getParameter("Fname")%>" class="form-control" id="formGroupExampleInput" placeholder="First Name">
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">Last Name</label>
  		<input type="text" name="Lname" value="<%=request.getParameter("Lname")%>" class="form-control" id="formGroupExampleInput" placeholder="Last Name">
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">Phone Number</label>
  		<input type="text" name="Pnumber" value="<%=request.getParameter("Pnumber")%>" pattern="[7896][0-9]{9}" class="form-control" id="formGroupExampleInput" placeholder="Phone Number">
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">Email</label>
  		<input type="email" name="Email" value="<%=request.getParameter("Email")%>" class="form-control" id="formGroupExampleInput" placeholder="Email">
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">address</label>
  		<input type="text" name="address" value="<%=request.getParameter("address")%>" class="form-control" id="formGroupExampleInput" placeholder="Email">
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">city</label>
  		<input type="text" name="city" value="<%=request.getParameter("city")%>" class="form-control" id="formGroupExampleInput" placeholder="Email">
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">state</label>
  		<input type="text" name="state" value="<%=request.getParameter("state")%>" class="form-control" id="formGroupExampleInput" placeholder="Email">
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">pincode</label>
  		<input type="text" name="pincode" value="<%=request.getParameter("pincode")%>" class="form-control" id="formGroupExampleInput" placeholder="Email">
		</div>
		<div class="center">
		<button class="btn btn-primary  center ">Update Profile</button>
		</div>
		</div >
		</form>
	</div>

</body>
</html>