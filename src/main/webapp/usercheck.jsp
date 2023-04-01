<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Record</title>
</head>
<body>
	<%@ page import="java.sql.*" %>
	<%@ page import="java.io.*" %>
  	<%@ page import="java.security.*" %>
  	<%@ page import="java.util.*" %>
	<%

	String username = request.getParameter("username");
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String PhoneNumber = request.getParameter("mobileno");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String Confirmpassword = request.getParameter("confirmpassword");
	String address = request.getParameter("address");
	String city = request.getParameter("city");
	String state = request.getParameter("state");
	String pin = request.getParameter("pincode");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/e-shoppingkart", "root", "");
	 try{
		 Statement stmt = con.createStatement();
		 ResultSet rs;
         rs = stmt.executeQuery("select * from userslogin where username='"+username+"' ");
     if(rs.next()){
    	   out.println("<script type=\"text/javascript\">");
    	   out.println("alert('Username Already Exist');");
    	   out.println("location='usersignup.jsp';");
    	   out.println("</script>"); 
    	   con.close();
     }
     Statement stmt2 = con.createStatement();
     ResultSet rs2;
     rs2 = stmt2.executeQuery("select * from userslogin where Email='"+email+"' ");
     if(rs2.next()){
	   out.println("<script type=\"text/javascript\">");
 	   out.println("alert('Email Already Exist');");
 	   out.println("location='usersignup.jsp';");
 	   out.println("</script>");   
 	  con.close();
	}
     
	Statement stmt3 = con.createStatement();
	if(password.equals(Confirmpassword)){
    stmt3.executeUpdate("INSERT INTO userslogin(username, FirstName,  LastName,  PhoneNumber,  Email,  password,address,city,state,zip) VALUES ('"+username+"','"+firstname+"','"+lastname+"','"+PhoneNumber+"','"+email+"','"+password+"','"+address+"','"+city+"','"+state+"','"+pin+"')");
	request.getRequestDispatcher("loginpage.jsp").forward(request, response);
	con.close();
	 }else{
		 out.println("<script type=\"text/javascript\">");
	 	   out.println("alert('Password is mismatch');");
	 	   out.println("location='usersignup.jsp';");
	 	   out.println("</script>");   
	 }
	 }
	catch(Exception e){
		 out.println(e);
	 }
	%> 
	
</body>
</html>