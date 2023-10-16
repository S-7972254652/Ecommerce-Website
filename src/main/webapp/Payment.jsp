<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Lumanosimo&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Lumanosimo&display=swap');
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Montserrat', sans-serif;
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
   background-color: #0C4160;

    padding: 30px 10px;
}

.card {
    max-width: 1000px;
    margin: auto;
    width:500px;
    color: black;
    border-radius: 20 px;
    border:2px solid;
    padding: 10px;
    background-color: white;
}

p {
    margin: 0px;
}

.container .h8 {
    font-size: 30px;
    font-weight: 800;
    text-align: center;
}

.btn.btn-primary {
    width: 200px;
    height: 70px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 15px;
    background-image: linear-gradient(to right, #77A1D3 0%, #79CBCA 51%, #77A1D3 100%);
    border: none;
    transition: 0.5s;
    background-size: 200% auto;

}


.btn.btn.btn-primary:hover {
    background-position: right center;
    color: #fff;
    text-decoration: none;
}



.btn.btn-primary:hover .fas.fa-arrow-right {
    transform: translate(15px);
    transition: transform 0.2s ease-in;
}

.form-control {
    color: white;
    background-color: #223C60;
    border: 2px solid transparent;
    height: 60px;
    padding-left: 20px;
    vertical-align: middle;
}

.form-control:focus {
    color: white;
    background-color: #0C4160;
    border: 2px solid #2d4dda;
    box-shadow: none;
}

.text {
    font-size: 14px;
    font-weight: 600;
}

::placeholder {
    font-size: 14px;
    font-weight: 600;
}
input{
width: 100%;
margin: 5px
}
button {
	padding: 14px 34px;
	background-color: #0C4160;
	color:white;
}
.button:hover {
	background-color: red;
}
</style>

</head>
<body  style="font-family: 'Lumanosimo', cursive;">
<form action="Payment" method="post">
        <div class="card px-4 bg-white">
            <p class="h8" style="padding: 15px">Payment Details</p>
            <div class="row gx-3">
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Person Name</p>
                        <input class="form-control mb-3" type="text" placeholder="Name" name="name" required="required">
                    </div>
                </div>
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Card Number</p>
                        <input class="form-control mb-3" type="text" placeholder="1234 5678 435678" name="cardno" required="required">
                    </div>
                </div>
                <div class="col-6">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Expiry</p>
                        <input class="form-control mb-3" type="date" placeholder="MM/YYYY" name="expiry" required="required">
                    </div>
                </div>
                <div class="col-6">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">CVV/CVC</p>
                        <input class="form-control mb-3 pt-2 " type="password" placeholder="***" name="cvv" required="required">
                        
                    </div>
                </div>
                <div class="col-12">
                    <button href="">Order Now</button>

                </div>
            </div>
        </div>
        </form>
   
</body>
</html>