<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Valtech Store</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link href="<c:url value="/resources/css/stylesheetmain.css"/>" rel="stylesheet">
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script> -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
	</head>
	<body>
		<footer class="container-fluid">
			<div class="row">
				<div class="col-sm-3">
					<ul>
						<li><b>Get to Know Us</b></li>
						<li><a href="#">About us</a></li>
						<li><a href="#">Contact us</a></li>
						<li><a href="#">Careers</a></li>
					</ul>
				</div>
				<div class="col-sm-3">
					<ul>
						<li><b>Help</b></li>
						<li><a href="#">Payments</a></li>
						<li><a href="#">Saved cards</a></li>
						<li><a href="#">Shipping</a></li>
					</ul>
				</div>
				<div class="col-sm-3">
					<ul>
						<li><b>MISC</b></li>
						<li><a href="#">Online Shopping</a></li>
						<li><a href="#">Affiliate program</a></li>
						<li><a href="#">Gift card</a></li>
					</ul>
				</div>
				<div class="col-sm-3">
					<ul>
						<li><b>Let Us Help You</b></li>
						<li><a href="#">Your Account</a></li>
						<li><a href="#">Your Orders</a></li>
						<li><a href="#">Help</a></li>
					</ul>
				</div>
			</div>
		</footer>
	</body>
</html>