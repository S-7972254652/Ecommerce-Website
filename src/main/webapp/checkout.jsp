<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CheckOut</title>
<!-- Favicon--> 
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Lumanosimo&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Lumanosimo&display=swap');
.navbar{
	background-image: linear-gradient(to right, #3d12ec, #0055ff, #007aff, #0097ff, #00b1f7, #39bff4, #5dcbf1, #7dd7ef, #75def4, #6ee5f7, #66ecfa, #5ff3fb);
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<body id="page-top"  style="font-family: 'Lumanosimo', cursive;">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-info text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand text-white fw-bold" href="#page-top" style="letter-spacing: 2px">Shopping</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded text-white fw-bold" href="index.jsp">Home</a></li>
					<li class="nav-item mx-0 mx-lg-1" >
						<a class="nav-link py-3 px-0 px-lg-3 rounded text-white fw-bold"  data-bs-toggle="modal" data-bs-target="#cart" style="cursor: pointer;"><ion-icon name="cart-outline" style="font-size:30px"></ion-icon><span class="cart-items">( 0 )</span></a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Logout">Logout</a></li>
					<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 text-white fw-bold rounded" href="#"><%=session.getAttribute("name") %></a></li>
				</ul>
			</div>
		</div>
	</nav>

<div class="container">
<div class="row" style="margin-top:120px">
<div class="col-md-6">
<div class="card">
<h5 class="text-center my-2 text-danger ">Your Cart</h5><hr>
<div class="cart-body">
</div>
</div>
</div>
<div class="col-md-6">
<!-- Form Details -->
<div class="card p-3">
<h5 class="text-center my-2 text-danger ">Details For Order</h5><hr>
<form action="OrderRegister" method="post">
 <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter Your Name" name="Name" required="required">
  </div>
  <div class="d-flex">
  <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input type="email" class="form-control w-100" name="Email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="required">
    
  </div>
  <div class="form-group ms-5">
    <label for="exampleInputEmail1">Phone No</label>
    <input type="text" class="form-control" id="Phone" name="Phone" aria-describedby="Phone" placeholder="Enter Phone Number" required="required">
  </div>
 </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Address</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" name="Address" rows="3" placeholder="Your Shipping Address.." required="required"></textarea>
  </div>
  <div class="container text-center">
  <button class="btn btn-outline-info my-3 mx-0 " href="">Order Now</button>
  <button class="btn btn-outline-primary my-3 mx-0 " href="index.jsp">Continue Shopping</button>
  </div>
</form>
</div>
<!-- Form Details -->
</div>
</div>
</div>













































<!-- Modal -->
<div class="modal fade" id="cart" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <div class="cart-body"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary checkout-btn" onclick="goToCheckout()">CheckOut</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal For Cart -->

<script src="js/index.js"></script>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
		<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>