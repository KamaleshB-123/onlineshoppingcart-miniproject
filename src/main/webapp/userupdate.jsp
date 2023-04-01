<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.security.*" %>
<%@ page import="java.util.*" %>
<% 
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/e-shoppingkart", "root", "");
	String name = request.getParameter("Name");
	String Fname = request.getParameter("Fname");
	String Lname = request.getParameter("Lname");
	String Phonenumber = request.getParameter("Pnumber");
	String Email = request.getParameter("Email");
	String address = request.getParameter("address");
	String city = request.getParameter("city");
	String state = request.getParameter("state");
	String pin = request.getParameter("pincode");
	Statement stmt = con.createStatement();
	stmt.executeUpdate("UPDATE userslogin SET username='"+name+"', FirstName='"+Fname+"', LastName='"+Lname+"', PhoneNumber='"+Phonenumber+"', Email='"+Email+"', address='"+address+"',city='"+city+"',state='"+state+"',zip='"+pin+"' WHERE Email = '"+Email+"' OR username='"+name+"'  ");
	out.println("<script type=\"text/javascript\">");
	out.println("alert('your profile is update successfully');");
	out.println("location='loginpage.jsp';");
	out.println("</script>");  
  	con.close();
  	
}catch(Exception e){
	out.println(e);
}
%>	
</body>
</html>