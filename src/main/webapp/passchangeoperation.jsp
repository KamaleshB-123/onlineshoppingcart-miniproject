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
	String email = request.getParameter("email");
	String newpassword = request.getParameter("npass");
	String confirmpassword = request.getParameter("cpass");
	
	if(newpassword.equals(confirmpassword)){
		Statement stmt = con.createStatement();
		stmt.executeUpdate("UPDATE userslogin SET password = '"+newpassword+"' WHERE Email = '"+email+"';  ");
  		response.sendRedirect("passchangecredential.jsp");
  		con.close();
	}else{
			out.println("<script type=\"text/javascript\">");
	 	   out.println("alert('Password is mismatch');");
	 	   out.println("location='passchangeoperation.jsp';");
	 	   out.println("</script>");   
	}
  	
}catch(Exception e){
	out.println(e);
}
%>	

</body>
</html>