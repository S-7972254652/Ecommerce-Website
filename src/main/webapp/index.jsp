<%@page import="com.mysql.cj.jdbc.Blob"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%


if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Online Shopping</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Lumanosimo&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Lumanosimo&display=swap');
    .image-cards {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
    
        margin-top: 200px;
    }

    .image-card {
        width: 300px;
        <!--text-align: center;-->
        border: 2px solid;
    }
    .image-card p:hover{
    color:golden; 
    }
	.navbar{
	background-image: linear-gradient(to right, #3d12ec, #0055ff, #007aff, #0097ff, #00b1f7, #39bff4, #5dcbf1, #7dd7ef, #75def4, #6ee5f7, #66ecfa, #5ff3fb);
	}
   
</style>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<body id="page-top" style="font-family: 'Lumanosimo', cursive;">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-dark text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand text-white fw-bold text-uppercase" style="letter-spacing: 4px;" href="#page-top">Shopping</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					
					<li class="nav-item mx-0 mx-lg-1" >
						<a class="nav-link py-3 px-0 px-lg-3 rounded text-white fw-bold"  data-bs-toggle="modal" data-bs-target="#cart" style="cursor: pointer;"><ion-icon name="cart-outline" style="font-size:30px"></ion-icon><span class="cart-items">( 0 )</span></a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded text-decoration-none text-white" href="Logout">Logout</a></li>
					<li class="nav-item mx-0 mx-lg-1" style="background-color: transparent;border: 2px solid;border-radius: 20px;height: 60px"><a
						class="nav-link py-3 px-0 px-lg-3 text-white fw-bold rounded" href="#"><%=session.getAttribute("name") %></a></li>
						
				</ul>
			</div>
		</div>
	</nav>
	
	<!-- Carosuel -->
	<div id="carouselExampleFade" class="carousel slide carousel-fade" style="margin-top: 80px" data-bs-ride="carousel">
  <div class="carousel-inner" style="cursor: pointer;">
    <div class="carousel-item active">
      <img src="images/s0.jpg" class="d-block w-100" style="height: 400px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/s11.jpg" class="d-block w-100" style="height: 400px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/s13.jpg" class="d-block w-100" style="height: 400px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/s14.jpg" class="d-block w-100" style="height: 400px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/sn1.jpg" class="d-block w-100" style="height: 400px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/snew.jpg" class="d-block w-100" style="height: 400px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/sn2.jpg" class="d-block w-100" style="height: 400px" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
	<!-- Carosuel -->
	
	
<div class="container-fluid d-flex justify-content-between align-items-start">	
<div class="col-md-2">
	<!-- Categories -->
	
	<%

	
try {

String connectionURL = "jdbc:mysql://localhost:3306/user";

Connection connection = null;

Statement statement = null;

ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver").newInstance();

connection = DriverManager.getConnection(connectionURL, "root", "");

statement = connection.createStatement();

String QueryString = "SELECT * from productdata";
rs = statement.executeQuery(QueryString);
%>
<ul class="table-group" style="margin-top: 180px;width:300px; background-color: #fff;color:black" cellpadding="15" border="1">
<li class="list-group-item " style="background-image: linear-gradient(to right, #3d12ec, #0055ff, #007aff, #0097ff, #00b1f7, #39bff4, #5dcbf1, #7dd7ef, #75def4, #6ee5f7, #66ecfa, #5ff3fb);"><a class="text-decoration-none text-white" href="#">Categories Available	</a></li>
<%
while (rs.next()) {
%>
<li class="list-group-item"><a href="index.jsp?category=<%=rs.getInt(1)  %>" class="text-decoration-none text-dark"><%=rs.getString(2)%></a></li>


<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</ul>
	
	
</div>	
	
	
	
	
	
	
	
<div class="col-md-10">
	
	<!-- Categories -->


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "user";
String userId = "root";          
String password = "";

try {
    Class.forName(driverName);
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


<div class="image-cards">
    <%
    try {
        connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
        statement = connection.createStatement();
        String sql = "SELECT * FROM aproductdata";
        resultSet = statement.executeQuery(sql);

        while (resultSet.next()) {
            String imageFilename = resultSet.getString("image");
            String imagePath = request.getContextPath() + "/images/" + imageFilename;
    %>
    <div class="image-card" style="margin-top: 0px;padding: 10px;box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;">
        <img style="background-color: #f7f7f7" src="<%= imagePath %>" alt="Image" width="100%" height="200">
        
        
        <p style="font-weight: bolder;">Name: <span style="font-weight: bold;color: gray"><%= resultSet.getString("name") %></span> </p>
        <p style="font-weight: bolder;">Description: <span style="font-weight: bold;color: gray"><%= resultSet.getString("description") %></span></p>
        <p style="font-weight: bolder;">Price: <span>Rs.</span> <span style="font-weight: bold;color: gray"><%= resultSet.getString("price") %>/-</span>	</p>
        <p style="color: red; font-weight: bold">Discount:<span style="margin-left: 10px"><%= resultSet.getString("Discount") %>%</span> </p>
        <div class="d-flex justify-content-between align-items-center 	">
        <button class=" p-2 border-2 text-white" style="background-image: linear-gradient(to right, #3d12ec, #0055ff, #007aff, #0097ff, #00b1f7, #39bff4, #5dcbf1, #7dd7ef, #75def4, #6ee5f7, #66ecfa, #5ff3fb);"><a class="text-decoration-none text-white" onclick="add_to_cart(<%=resultSet.getInt("id") %>,'<%=resultSet.getString("name") %>',<%=resultSet.getInt("price") %>)" >Add To Cart</a></button>
        
        </div>
    </div>
    <%
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    %>
    </div>
</div>
</div>

<!-- Modal For Cart -->
<!-- Button trigger modal -->


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
