<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@page import ="com.journaldev.spring.RegisterController" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Soumya Store</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link href="<c:url value="/resources/css/stylesheetmain.css"/>" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<!--  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
		
	</head>
    <body>
    <%@include file="login.jsp" %>
		<div class="jumbotron">
			<div class="container text-center">
			 	<h1>Grabb It!!</h1>
			 </div>
		</div>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
					</button>
				</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="/SpringMVCHibernate/listproducts">Home</a></li>
					<li><a href="/SpringMVCHibernate/camera">Camera</a></li>
					<li><a href="/SpringMVCHibernate/mobile">Mobile</a></li>
					<li><a href="/SpringMVCHibernate/laptop">Laptop</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				
				<c:choose>
				<c:when test="${login_flag==1 }">
			        <li><a href="#myModal" data-toggle="modal"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
			        </c:when>
			     <c:when test="${login_flag==0 }"> 
			       <li><a href="#myModal" data-toggle="modal"><span class="glyphicon glyphicon-user"></span> Login</a></li>
			       </c:when>
			       </c:choose>
			        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
			    </ul>
			</div>
			</div>
		</nav>
		
	</body>
</html>