<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css files/Signuppage.css">
<script src="jquery-3.6.0.min/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>User Signup</title>
</head>
<body>
	<div class="content">
 		<div class="center category">
		<p class="category">User Signup</p>
        </div>
        <form action="usercheck.jsp">	
        <div class="form">
        <div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">User Name</label>
  		<input type="text" name="username" class="form-control" id="formGroupExampleInput" placeholder="User Name">
		</div>
        <div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">First Name</label>
  		<input type="text" name="firstname" class="form-control" id="formGroupExampleInput" placeholder="First Name">
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">Last Name</label>
  		<input type="text" name="lastname" class="form-control" id="formGroupExampleInput" placeholder="Last Name">
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">Phone Number</label>
  		<input type="text" name="mobileno" pattern="[7896][0-9]{9}" class="form-control" id="formGroupExampleInput" placeholder="Phone Number">
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">Email</label>
  		<input type="email" name="email" class="form-control" id="formGroupExampleInput" placeholder="Email">
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">Password</label>
  		<input type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" class="form-control" id="formGroupExampleInput" placeholder="password">
		</div>
		<div class="mb-3">
  		<label for="formGroupExampleInput" class="form-label label-text">Confirm Password</label>
  		<input type="password" name="confirmpassword"  class="form-control" id="formGroupExampleInput" placeholder="password">
		</div>
		<div class="mb-3">
    <label for="inputAddress" class="form-label label-text">Address</label>
    <input type="text" name="address" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
 
  <div class="mb-3">
    <label for="inputCity" class="form-label label-text">City</label>
    <input type="text" name="city" class="form-control" id="inputCity">
  </div>
  <div class="mb-3">
    <label for="inputState" class="form-label label-text">State</label>
    <select id="inputState" name="state" class="form-select">
      <option value="AN">Andaman and Nicobar Islands</option>
    <option value="AP">Andhra Pradesh</option>
    <option value="AR">Arunachal Pradesh</option>
    <option value="AS">Assam</option>
    <option value="BR">Bihar</option>
    <option value="CH">Chandigarh</option>
    <option value="CT">Chhattisgarh</option>
    <option value="DN">Dadra and Nagar Haveli</option>
    <option value="DD">Daman and Diu</option>
    <option value="DL">Delhi</option>
    <option value="GA">Goa</option>
    <option value="GJ">Gujarat</option>
    <option value="HR">Haryana</option>
    <option value="HP">Himachal Pradesh</option>
    <option value="JK">Jammu and Kashmir</option>
    <option value="JH">Jharkhand</option>
    <option value="KA">Karnataka</option>
    <option value="KL">Kerala</option>
    <option value="LA">Ladakh</option>
    <option value="LD">Lakshadweep</option>
    <option value="MP">Madhya Pradesh</option>
    <option value="MH">Maharashtra</option>
    <option value="MN">Manipur</option>
    <option value="ML">Meghalaya</option>
    <option value="MZ">Mizoram</option>
    <option value="NL">Nagaland</option>
    <option value="OR">Odisha</option>
    <option value="PY">Puducherry</option>
    <option value="PB">Punjab</option>
    <option value="RJ">Rajasthan</option>
    <option value="SK">Sikkim</option>
    <option value="TN">Tamil Nadu</option>
    <option value="TG">Telangana</option>
    <option value="TR">Tripura</option>
    <option value="UP">Uttar Pradesh</option>
    <option value="UT">Uttarakhand</option>
    <option value="WB">West Bengal</option>
    </select>
  </div>
  <div class="mb-3">
    <label for="inputZip" class="form-label label-text">Zip</label>
    <input type="text" name="pincode" class="form-control" id="inputZip">
  </div>
		<div class="center">
		<button class="btn btn-primary  center ">Submit</button>
		</div>
		</div >
		</form>
		<hr>
		<div class="help-link center">
		<a  href="loginpage.jsp">Already have an account</a>
		</div>
	</div>
</body>
</html>