<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
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
.myPadding{
	padding: 30px;
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
			<h1>Please Login</h1>
			<c:url var="addAction" value="/Register/admin"></c:url>
			<form name="form1" action="${addAction}"  >
			  <div class="form-group">
			    <label for="email">Name:</label>
			    <input class="form-control" type="text" placeholder="Please enter Name" name="name" />
			  </div>
			  <div class="form-group">
			    <label for="pwd">Password:</label>
			    <input type="password" class="form-control" placeholder="Please enter  password" name="password"/>
			  </div>
			  <button type="submit" class="btn btn-default" name="submit">Submit</button>
			</form>
		</div>
	</body>
</html>