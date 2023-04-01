<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css files/cartbuy.css">
<script src="jquery-3.6.0.min/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Buy Product</title>
</head>
<body>
<h1 style="text-align: center; color: white;">Congragulations Your Product has been shipped </h1>

<%
String title = request.getParameter("title");
String price = request.getParameter("price");
String Product_category = request.getParameter("Product_category");
%>
<div class="row">
<div class="col-md-3 my-3" style="margin-left: 35%;">
 <div  class="card" style="width: 18rem;">
  <img  src="<%=(String)session.getAttribute("img") %>" width="200px" height="200px"  class="card-img-top" alt="">
  <div class="card-body">
  <h5 class="card-title"><%=title%></h5>
    <p class="card-text"><%=price%>&#x20B9;</p>
    <h6><%=Product_category%></h6>
  </div>
</div>
</div>
<div class="md-3 Details">
 <div class="details">
  	<p>You have got products in two three days</p>
  	<hr>
  	<h3>Address:</h3>
  	<P><%=(String)session.getAttribute("address") %></P>
  	<P><%=(String)session.getAttribute("city") %></P>
  	<P><%=(String)session.getAttribute("state") %></P>
  	<P>Pincode: <%=(String)session.getAttribute("zip") %></P>
  </div>
  </div>
  </div>
  <a href="shoppingpage.jsp"><button type="button" style="margin-left: 45%;" class="btn btn-primary ">Buy Product</button></a>
  
</body>
</html>