<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- Ionicon cdn -->
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Lumanosimo&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Lumanosimo&display=swap');
.table tbody td{
 vertical-align:middle; 
 }
 .btn-incre, .btn-decr{
 box-shadow: none;
 font-size: 25px;
 }
</style>
<body  style="font-family: 'Lumanosimo', cursive;">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-info text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">Online Shopping</a>
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
						class="nav-link py-3 px-0 px-lg-3 rounded fw-bold text-white" href="index.jsp">Home</a></li>
			
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded fw-bold text-white" href="Logout">Logout</a></li>
					<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded fw-bold text-white" href="Logout"><%=session.getAttribute("name") %></a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	
	<!-- Cart is Started -->
	<div class="container" style="margin-top: 150px">
	<div class="d-flex">
	<h4 class="p-2">Total Price:<span>$143</span></h4><a href="#" class="btn  btn-info text-decoration-none p-2">Check Out</a>	</div>
	<table class="table table-light">
	<thead>
	<tr>
	<th scope="col">Name</th>
	<th scope="col">Category</th>
	<th scope="col">Price</th>
	<th scope="col">Buy Now</th>
	<th scope="col">Cancel</th>
	</tr>
	</thead>
	<tbody>
	<tr>
	<td>Mens Shoes</td>
	<td>Shoes</td>
	<td>450</td>
	<td>
	<form action="" method="post" class="form-inline">
	<input type="hidden" name="ID" value="1" class="form-input">
	<div class="form-group d-flex justify-content-between">
	<a class="btn btn-sm btn-incre" href=""><ion-icon name="add-circle-outline"></ion-icon></a>
	<input type="text" name="quantity" class="form-control" value="1" readonly>
	<a class="btn btn-sm btn-decr" href=""><ion-icon name="remove-circle-outline"></ion-icon></a>
	</div>
	</form>
	</td>
	<td><a class="btn btn-sm btn-danger" href="">Remove</a></td>
	</tr>
	</tbody>
	</table>

	
	</div>
	<!-- Cart is Ended -->
</body>
</html>