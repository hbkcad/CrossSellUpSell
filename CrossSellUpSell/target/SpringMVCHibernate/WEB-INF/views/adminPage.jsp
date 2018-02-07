<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Valtech Store</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	.jumbotron{
background-color: #33CCFF;
margin-bottom: 0;
padding: 0;
}
.navbar {
	border-radius: 0;
}
.navbar-inverse .navbar-nav>li>a{
	color:white
}
.navbar li:hover{
	background-color: #00CCFF;
} 
.navbar li:active{
	background-color: #00CCFF;
}
.panel-footer {
	background-color: none;
}
.myPadding{
	padding: 20px;
}
footer{
	background-color: #33CCFF;
	padding: 20px;
}
footer li {
	padding: 10px;
}
footer ul li{
	list-style-type: none;
}
footer ul li a{
	color: black;
}
</style>
	</head>
    <body>
		<div class="jumbotron">
			<div class="container text-center">
			 	<h1>Valtech_ Store Admin</h1>
			 </div>
		</div>
		
		<div class="row myPadding">
			<a href="/SpringMVCHibernate/Category/category"><button class="btn-lg">Manage category</button></a>
			<a href="/SpringMVCHibernate/products"><button class="btn-lg">Manage Products</button></a>
			<a href="/SpringMVCHibernate/Accessory/accessory"><button class="btn-lg">Manage Accessories</button></a>
		</div>
	</body>
</html>