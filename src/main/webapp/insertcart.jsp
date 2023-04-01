<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css files/">
<script src="jquery-3.6.0.min/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.* " %>
<%
String img = request.getParameter("img");
session.setAttribute("img",img);

try{
String title = request.getParameter("title");
String price = request.getParameter("price");
String category = request.getParameter("category");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/e-shoppingkart", "root", "");
Statement stmt = con.createStatement();
String sql = "INSERT INTO insert_cart(Product_title,Price,Product_category ) VALUES ('"+title+"','"+price+"','"+category+"')";
stmt.executeUpdate(sql);
response.sendRedirect("cart-page.jsp");
}catch(Exception e){
	out.println(e);
}
%>
	
</body>
</html>
