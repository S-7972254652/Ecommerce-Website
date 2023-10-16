<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head></head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--Bootstrap5 CDN  -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!--Bootstrap5 CDN  -->
<style>
@import url('https://fonts.googleapis.com/css2?family=Lumanosimo&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Lumanosimo&display=swap');
.admin .card{
border: 2px solid #0F9CF9; 
}
.admin .card:hover{
border: 2px solid #000; 
background-color: #e2e2e2;
cursor: pointer;
}
</style>
<body  style="font-family: 'Lumanosimo', cursive;">


<!-- Navbar -->
<nav class="navbar navbar-expand-lg " style="background-color: #0F9CF9">
  <div class="container">
    <a class="navbar-brand fw-bold text-white text-uppercase"  href="#">Online Store</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav"> 
      <ul class="navbar-nav fw-bold ms-auto">
        <li class="nav-item"> 
          <a class="nav-link active text-white p-3" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white p-3" href="#">MyCart</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white p-3" href="#">Categories</a>
        </li>
        <li class="nav-item">
         <button class="text-info bg-white m-2 rounded" "><a class="text-success nav-link fw-bolder text-uppercase" href="Logout">Logout</a></button>
        </li>
      </ul>
    </div>
  </div>
</nav>
<!-- Navbar -->




<div class="container admin">
<div class="row mt-3">
<div class="col-md-4">
<div class="card">
<div class="card-body text-center">
<div class="container">
<img style="max-width: 125px" class="img-fluid" alt="User_icon" src="images/Users.png">
</div>
<h1>1234</h1>
<h1 class="text-uppercase text-muted">Users</h1>
</div>
</div>
</div>

<div class="col-md-4">
<div class="card">
<div class="card-body text-center">
<div class="container">
<img style="max-width: 150px" class="img-fluid" alt="List_icon" src="images/list.png">
</div>
<h1>1234</h1>
<h1 class="text-uppercase text-muted">Categories</h1>
</div>
</div>
</div>

<div class="col-md-4">
<div class="card">
<div class="card-body text-center">
<div class="container">
<img style="max-width: 150px" class="img-fluid" alt="Product_icon" src="images/Product.png">

</div>
<h1>1234</h1>
<h1 class="text-uppercase text-muted">Products</h1>
</div>
</div>
</div>
</div>
<!-- Second Row -->
<div class="container">
<div class="row mt-3">
<div class="col-md-6">
<div class="card" data-bs-toggle="modal" data-bs-target="#exampleModal">
<div class="card-body text-center">
<div class="container">
<img style="max-width: 150px" class="img-fluid" alt="Product_icon" src="images/Keys.png">

</div>
<p class="mt-4">Click Here To Add New Category</p>
<h1 class="text-uppercase text-muted">add category</h1>
</div>
</div>
</div>
<div class="col-md-6">
<div class="card" data-bs-toggle="modal" data-bs-target="#exampleModal-1" >
<div class="card-body text-center">
<div class="container">
<img style="max-width: 150px" class="img-fluid" alt="Product_icon" src="images/Product.png">

</div>
<p class="mt-4	">Click Here To Add Product</p>
<h1 class="text-uppercase text-muted">Products</h1>
</div>
</div>
</div>
</div>
</div>
<!-- Second Row -->
</div>


<!-- Modal Category -->

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-info text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill Category Details</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form action="ProductOperationServlet" method="post">
      <div class="form-group">
      <input type="text" class="form-control" name="catTitle" placeholder="Enter Category Title.." required>
      </div>
      <div class="form-group">
      <textarea style="height: 350px;margin-top:10px" class="form-control" rows="" cols="" placeholder="Enter Category Description.." name="catDescription" required></textarea>
      </div>
      <div class="container mt-2 text-center">
      <button class="btn btn-outline-info">Add Category</button>
        <button type="button" class="btn btn-info" data-bs-dismiss="modal">Close</button>
      </div>
      </form>
      </div>
    </div>
  </div>
</div>

<!-- Modal Category-->

<!-- Product Modal -->



<!-- Modal -->
<div class="modal fade" id="exampleModal-1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Product Details</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <!-- Form -->
        <form action="addProductServlet" method="post" enctype="multipart/form-data">
        <!-- Product-title -->
        <div class="form-group">
        <input	type="text" class="form-control" placeholder="Enter Product Title" name="pName" required>
        </div>
        <!-- Product-Description -->
        <div class="form-group">
        <textarea style="height: 200px" class="form-control mt-2" placeholder="Enter Product Details" rows="" cols="" name="pDesc"></textarea>
        </div>
        <!-- Product Price -->
          <div class="form-group  mt-2">
        <input	type="number" class="form-control" placeholder="Enter Product Price" name="pPrice" required>
        </div>
        <!-- Product Discount -->
          <div class="form-group  mt-2">
        <input	type="number" class="form-control" placeholder="Enter Product Discount" name="pDiscount" required>
        </div>
        <!-- Product Quantity -->
          <div class="form-group  mt-2">
        <input	type="number" class="form-control" placeholder="Enter Product Quantity" name="pQuantity" required>
        </div>
        <!-- Product Category -->
          <div class="form-group  mt-2">
  
    <!-- IMP -->
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/user";%>
<%!String user = "root";%>
<%!String psw = "";%>
<!-- IMP-->	
    <%
    Connection con = null;
    PreparedStatement ps = null;
    try
    {
    Class.forName(driverName);
    con = DriverManager.getConnection(url,user,psw);
    String sql = "SELECT * FROM productdata";
    ps = con.prepareStatement(sql);
    ResultSet rs = ps.executeQuery(); 
    %>
<p>Select Name :
    <select>
    <%
    while(rs.next())
    {
    String TITLE = rs.getString("TITLE"); 
    %>
    <option value="<%=TITLE%>"><%=TITLE%></option>
    <%
    }
    %>
    </select>
 </p><br>
    <%
    }catch(SQLException sqe){
    	out.println(sqe);
    }
    %>
    
    	 
        </div>
        <!-- Product File -->
          <div class="form-group mt-2">
          <label for="pPic">Select Image</label><br>
        <input	type="file" id="pPic" name="pPic" required>
        </div>
        <!--Submit Button  -->
       <div class="container text-center mt-3">
       <button class="btn btn-outline-info">Add Product</button>
        <button type="button" class="btn btn-info" data-bs-dismiss="modal">Close</button>
       </div>
        </form>
        <!--End-Form -->
      </div>
    </div>
  </div>
</div>
<!-- Product Modal -->

</body>
</html>