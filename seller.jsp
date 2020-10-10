<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SellerHomePage</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<link rel="stylesheet" href="./sass/style.css">
<link rel="stylesheet" href="./sass/sellerstyle.css">

</head>

<body>
	<!-- navigation bar 
   
 if (request.getAttribute("addProduct") != "true") {
	if (session.getAttribute("username") == null) {
		request.getRequestDispatcher("Register.jsp").include(request, response);
	}
}    %>  -->
	<main class="main-container">

		<!--navbar contains links to add Product/Schedule Auction/ Home Page-->

		<header>
			<nav class="navbar navbar-expand-lg  text-light">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarTogglerDemo03"
					aria-controls="navbarTogglerDemo03" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>

				<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
					<ul class="navbar-nav ml-auto mt-2 mt-lg-0 align-items-center">
						<li class="nav-item active"><a class="nav-link"
							href="index.html">Home <span class="sr-only">(current)</span></a>
						</li>

						<li class="nav-item">
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-primary" id="addproduct"
								data-toggle="modal" data-target="#addProductModal">Add
								Product</button>
						</li>
						<li class="nav-item">
							<button id="scheduleauction" type="button"
								class="btn btn-primary" data-toggle="modal"
								data-target="#scheduleAuctionModal">Schedule Auction</button>
						</li>
						<li class="nav-item">
							<form action="scheduleAuction.html">
								<button>Schedule Auction2</button>
							</form>
						</li>
						<li class="nav-item">
							<form action="LogoutController">
								<button id="LogOut">LogOut</button>
							</form>
						</li>
					</ul>

				</div>
			</nav>
		</header>

		<!--display seller info-->
		<div class="card" id="sellerInfo">
			<div class="card-header">
				<h1>${username}</h1>
			</div>
			<div class="card-body">
				<h5 class="card-title"><%=session.getAttribute("phoneNo")%></h5>
				<h5 class="card-title"><%=session.getAttribute("email")%></h5>
				<h5 class="card-title">Last Logged-in.</h5>
			</div>
		</div>

		<!--Display products-->
		<div class="container">
			<div class="card-deck">
				<div class="card">
					<img src="https://source.unsplash.com/200x200/?auction,bid"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Product Name</h5>
						<ul>
							<li>Highest Current bid</li>
							<li>Number of bidders</li>
						</ul>
					</div>
					<div class="card-footer">
						<small class="text-muted">Bid End Date</small>
					</div>
				</div>
				<div class="card">
					<img src="https://source.unsplash.com/200x200/?auction,tech"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Product Name</h5>
						<ul>
							<li>Highest Current bid</li>
							<li>Number of bidders</li>
						</ul>
					</div>
					<div class="card-footer">
						<small class="text-muted">Bid End Date</small>
					</div>
				</div>
				<div class="card">
					<img src="https://source.unsplash.com/200x200/?auction,biology"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Product Name</h5>
						<ul>
							<li>Highest Current bid</li>
							<li>Number of bidders</li>
						</ul>
					</div>
					<div class="card-footer">
						<small class="text-muted">Bid End Date</small>
					</div>
				</div>
			</div>

		</div>
		<!-- Modal -->
		<div class="modal fade" id="addProductModal" tabindex="-1"
			aria-labelledby="addProductModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="addProductModalLabel">Add Product</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form class="needs-validation" method="post"
							action="AddProductController" novalidate>
							<div class="form-row">
								<div class="col-md-6 mb-3">
									<label for="productname">Product Name</label> <input
										type="text" class="form-control" id="productname"
										name="productname" placeholder="Add Product Name" required />
									<div class="invalid-feedback">This field is required.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="actualprice">Actual Price </label> <input
										type="text" class="form-control" name="actualprice"
										id="actualprice" required>
									<div class="invalid-feedback">This field is required.</div>
								</div>
								<div class="col-md-12 mb-3">
									<label for="productdesc"> Description </label> <input
										type="text" class="form-control" id="productdesc"
										name="productdesc" placeholder="Give details.." required />
									<div class="invalid-feedback">This field is required.</div>
								</div>
							</div>
							<div class="form-row">
								<div class="col-md-12 mb-3">
									<label for="category">Category </label> <select
										class="custom-select" id="category" name="category" required>
										<option selected disabled value="">Choose...</option>
										<option value="Archaeology & Natural History">Archaeology
											& Natural History</option>
										<option value="Diamonds & Gemstones">Diamonds &
											Gemstones</option>
										<option value="Militaria & Weaponry">Militaria &
											Weaponry</option>
										<option value="Classic Automobilia">Classic
											Automobilia</option>
										<option value="Coins & Stamps">Coins & Stamps</option>
										<option value="Asian & Tribal Art">Asian & Tribal Art</option>
									</select>
									<div class="invalid-feedback">This field is required.</div>
								</div>
								<div class="col-md-4 mb-3">
									<label for="quantity">Quantity </label> <input type="text"
										class="form-control" id="quantity" name="quantity" required />
									<div class="invalid-feedback">This field is required.</div>
								</div>
							</div>
							<button class="btn btn-primary" type="submit">Submit
								form</button>
						</form>
					</div>
				</div>
			</div>
		</div>


		<!-- Modal -->
		<div class="modal fade" id="scheduleAuctionModal" tabindex="-1"
			aria-labelledby="scheduleAuctionModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="scheduleAuctionModalLabel">Schedule
							Auction</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form class="needs-validation" method="post"
							action="ScheduleAuctionController"novalidate>
							<div class="form-row">
								<div class="col-md-8 mb-3">
									<label for="category">Category </label> <select
										class="custom-select" id="category" name="category" required>
										<option selected disabled value="">Choose...</option>
										<option value="Archaeology & Natural History">Archaeology
											& Natural History</option>
										<option value="Diamonds & Gemstones">Diamonds &
											Gemstones</option>
										<option value="Militaria & Weaponry">Militaria &
											Weaponry</option>
										<option value="Classic Automobilia">Classic
											Automobilia</option>
										<option value="Coins & Stamps">Coins & Stamps</option>
										<option value="Asian & Tribal Art">Asian & Tribal Art</option>
									</select>
									<div class="invalid-feedback">This field is required.</div>
								</div>
								<div class="col-md-4 mb-3">
									<label for="minbidvalue">Minimum Bid Value : </label> <input
										type="number" class="form-control" id="minbidvalue"
										name="minbidvalue" required />
									<div class="invalid-feedback">This field is required.</div>
								</div>
							</div>
							<div class="form-row">
								<div class="col-md-6 mb-3">
									<label for="bidstartdate">Bid Start Date : </label> <input
										type="date" class="form-control" id="bidstartdate"
										name="bidstartdate" required />
									<div class="invalid-feedback">This field is required.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="bidenddate">Bid End Date : </label> <input
										type="date" class="form-control" id="bidenddate"
										name="bidenddate" required />
									<div class="invalid-feedback">This field is required.</div>
								</div>
							</div>
							<button class="btn btn-primary" type="submit">Submit
								form</button>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- footer -->
	</main>
	<footer>
		<h4>
			Copyright <span id="copyrightyear">Demo</span>
		</h4>
	</footer>
</body>
<script src="./scripts/main.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script> -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
<script>
	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(function() {
		'use strict';
		window.addEventListener('load', function() {
			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.getElementsByClassName('needs-validation');
			// Loop over them and prevent submission
			var validation = Array.prototype.filter.call(forms, function(form) {
				form.addEventListener('submit', function(event) {
					if (form.checkValidity() === false) {
						event.preventDefault();
						event.stopPropagation();
					}
					form.classList.add('was-validated');
				}, false);
			});
		}, false);
	})();
</script>

</html>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <%
	if(session.getAttribute("email")==null){
		request.getRequestDispatcher("Register.jsp").include(request, response);
	}

%>


    <h1>Seller page</h1>
    <h4>Welcome ${email}</h4>
    <form action="Logout">
        <button type="submit" name="Logout">Logout</button>


    </form>
</body>

</html> --%>
