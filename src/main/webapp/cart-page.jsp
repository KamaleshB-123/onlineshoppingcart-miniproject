<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css files/cartpage.css">
<script src="jquery-3.6.0.min/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Cart page</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.* " %>
<h1>My Cart</h1>

<%

try{
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/e-shoppingkart", "root", "");
	Statement stmt = con.createStatement();
	String sql = "SELECT Product_title,Price,Product_category FROM insert_cart";
	ResultSet rs =  stmt.executeQuery(sql);

	while(rs.next()){
		
	%>
	<div class="card" style="width: 18rem;">
  <img src="<%=(String)session.getAttribute("img") %>" height="200px"  class="card-img-top" alt="">
  <div  class="card-body">
    <h5 class="card-title"><%=rs.getString("Product_title")%></h5>
    <p class="card-text"><%=rs.getString("Price")%> &#x20B9;</p>
    <h6><%=rs.getString("Product_category") %></h6>
    <a href="cart-buy.jsp?title=<%=rs.getString("Product_title")%>&price=<%=rs.getString("Price")%>&Product_category=<%=rs.getString("Product_category") %>"><button type="button" class="btn btn-primary">Buy Now</button></a>
    <a href="cart-delete.jsp?title=<%=rs.getString("Product_title") %>"><button type="button" class="btn btn-danger">Remove</button></a>
  </div>
</div>
<% }
 %>
<%}catch(Exception e){
	out.println(e);
}
%>	
</body>
</html>