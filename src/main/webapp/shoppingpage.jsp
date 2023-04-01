<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css files/navigationbar.css">
<script src="jquery-3.6.0.min/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Shopping</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.* " %>




<div class="nav-bar">
<div class="category">
<img class="shopicon" src="./images/shoppingpage/shopicon.png" class="img-fluid" alt="icon">
<p>Online Shopping Site</p>
</div>
<div class="username">
<p ><%=(String)session.getAttribute("username")%></p>
</div>
<div class="dropdown">
  <img class="dropbtn" src="./images/shoppingpage/usericon.png" class="img-fluid" alt="icon">
  <div class="dropdown-content">
    <p><%=(String)session.getAttribute("username") %></p>
    <a href="userprofilepage.jsp?Name=<%=(String)session.getAttribute("username")%>&Fname=<%=(String)session.getAttribute("Firstname")%>&Lname=<%=(String)session.getAttribute("Lastname")%>&Pnumber=<%=(String)session.getAttribute("Phonenumber")%>&Email=<%=(String)session.getAttribute("Email")%>&address=<%=(String)session.getAttribute("address")%>&city=<%=(String)session.getAttribute("city")%>&state=<%=(String)session.getAttribute("state")%>&pincode=<%=(String)session.getAttribute("zip")%>">Your Profile</a>
  </div>
</div>
<div class="cart">
	<a href="cart-page.jsp"><img class="cart-icon" src="./images/shoppingpage/cart-icon.png" class="img-fluid" alt="icon"></a>
</div>

 <div class="logout">
 <a href="index.jsp">Log out</a>
 </div>
</div>

<div id="carouselExampleInterval carousel" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="5000">
      <img class="imgsize1" src="./images/carousel_images/shop_image.jpg" class="d-block w-100" alt="image">
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img class="imgsize2"  src="./images/carousel_images/ELC_APP.jpg" class="d-block w-100" alt="image">
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img class="imgsize3" src="./images/carousel_images/toy.jpg" class="d-block w-100" alt="image">
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img class="imgsize4" src="./images/carousel_images/furn_home.jpg" class="d-block w-100" alt="image">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div class="container">
		<div class="card-header my-3">All Products</div>
		<div class="row">
			<div class="col-md-3 my-3">
				<div class="card w-100">
				<img src="./images/product-image/sheo-image.jpg" width="100%" height="150px" alt="pic" >
					<div class="card-body">
						<h5 class="card-title">Mens Sheo</h5>
						<h6 class="price">350</h6>
						<h6 >Sheo</h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="cart-btn" href="insertcart.jsp?img=./images/product-image/sheo-image.jpg&title=Mens-sheo&price=350&category=Sheo" type="button" class="btn btn-primary">Add Cart</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 my-3">
				<div class="card w-100">
				<img src="./images/product-image/tiger.jpg" width="100%" height="150px" alt="pic" >
					<div class="card-body">
						<h5 class="card-title">Tiger Toy</h5>
						<h6 class="price">1,500</h6>
						<h6 >Tiger</h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="cart-btn" href="insertcart.jsp?img=./images/product-image/tiger.jpg&title=Tiger Toy&price=1,500&category=Tiger" type="button" class="btn btn-primary">Add Cart</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 my-3">
				<div class="card w-100">
				<img src="./images/product-image/vivo-mobile.jpg" height="150px" width="100%"  alt="pic" >
					<div class="card-body">
						<h5 class="card-title">Vivo Mobile</h5>
						<h6 class="price">30,000</h6>
						<h6 >Mobile</h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="cart-btn" href="insertcart.jsp?img=./images/product-image/vivo-mobile.jpg&title=Vivo Mobile&price=30,000&category=Mobile" type="button" class="btn btn-primary">Add Cart</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 my-3">
				<div class="card w-100">
				<img src="./images/product-image/laptop.jpg" height="150px" width="100%" alt="pic" >
					<div class="card-body">
						<h5 class="card-title">Laptop</h5>
						<h6 class="price">50,000</h6>
						<h6 >HP-Laptop</h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="cart-btn" href="insertcart.jsp?img=./images/product-image/laptop.jpg&title=Laptop&price=50,000&category=HP-Laptop" type="button" class="btn btn-primary">Add Cart</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 my-3">
				<div class="card w-100">
				<img src="./images/product-image/led-tv.jpg" height="150px" width="100%" alt="pic" >
					<div class="card-body">
						<h5 class="card-title">Led TV</h5>
						<h6 class="price">15,000</h6>
						<h6 >Intex Led</h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="cart-btn" href="insertcart.jsp?img=./images/product-image/led-tv.jpg&title=Led TV&price=15,000&category=Intex Led" type="button" class="btn btn-primary">Add Cart</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3 my-3">
				<div class="card w-100">
				<img src="./images/product-image/chair.jpg" height="150px" width="100%" alt="pic" >
					<div class="card-body">
						<h5 class="card-title">Chair</h5>
						<h6 class="price">5,000</h6>
						<h6 >Home Furniture</h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="cart-btn" href="insertcart.jsp?img=./images/product-image/chair.jpg&title=Led TV&price=5,000&category=Home Furniture" type="button" class="btn btn-primary">Add Cart</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 my-3">
				<div class="card w-100">
				<img src="./images/product-image/t-shirt.jpg" height="150px" width="100%" alt="pic" >
					<div class="card-body">
						<h5 class="card-title">Shirt</h5>
						<h6 class="price">1,000</h6>
						<h6 >Raymonds</h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="cart-btn" href="insertcart.jsp?img=./images/product-image/t-shirt.jpg&title=Chair&price=5,000&category=Raymonds" type="button" class="btn btn-primary">Add Cart</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 my-3">
				<div class="card w-100">
				<img src="./images/product-image/pencil.jpg" height="150px" width="100%" alt="pic" >
					<div class="card-body">
						<h5 class="card-title">Colour Pencil</h5>
						<h6 class="price">60</h6>
						<h6 >Cryons</h6>
						<div class="mt-3 d-flex justify-content-between">
						<a class="cart-btn" href="insertcart.jsp?img=./images/product-image/pencil.jpg&title=Colour Pencil&price=60&category=Cryons" type="button" class="btn btn-primary">Add Cart</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>