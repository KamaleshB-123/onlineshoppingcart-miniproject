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
<%@ page import="java.util.* " %>

<%

try{
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/e-shoppingkart", "root", "");
	Statement stmt = con.createStatement();
	String sql = "DELETE FROM insert_cart WHERE Product_title='"+request.getParameter("title")+"'";
	stmt.executeUpdate(sql);
	response.sendRedirect("shoppingpage.jsp");
}catch(Exception e){
	out.println(e);
}
%>
</body>
</html>