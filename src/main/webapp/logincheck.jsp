<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
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
	String username = request.getParameter("euname");
	String pass = request.getParameter("pass");
	Statement stmt = con.createStatement();
	ResultSet rs;
  	rs = stmt.executeQuery("SELECT username,FirstName,LastName,PhoneNumber, Email, password,address,city,state,zip FROM userslogin WHERE Email='"+username+"' AND password='"+pass+"'  ");
  	if(rs.next()){
  		response.sendRedirect("shoppingpage.jsp");
  		session.setAttribute("username",rs.getString("username"));
  		session.setAttribute("Firstname",rs.getString("Firstname"));
  		session.setAttribute("Lastname",rs.getString("LastName"));
  		session.setAttribute("Phonenumber",rs.getString("PhoneNumber"));
  		session.setAttribute("Email",rs.getString("Email"));
  		session.setAttribute("address",rs.getString("address"));
  		session.setAttribute("city",rs.getString("city"));
  		session.setAttribute("state",rs.getString("state"));
  		session.setAttribute("zip",rs.getString("zip"));
 	   	con.close();
 	   	
        }else{
        	out.println("<script type=\"text/javascript\">");
 	 	   out.println("alert('Email or Password is Incorrect');");
 	 	   out.println("location='loginpage.jsp';");
 	 	   out.println("</script>");  
            
        } 
  
  	
}catch(Exception e){
	out.println(e);
}
	
	
%>
</body>
</html>