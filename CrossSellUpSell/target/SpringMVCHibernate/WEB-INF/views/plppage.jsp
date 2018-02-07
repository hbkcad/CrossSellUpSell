<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page import="com.journaldev.spring.RegisterController" %>
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
	
		<jsp:include page="headermain.jsp" />
		
		<!-------- carousel ------------->
              <div class="container-fluid">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
 
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      <a href="/SpringMVCHibernate/laptop">
        <img src="/SpringMVCHibernate/resources/images/1.png" alt="Laptop" style="width:100%;">
        </a>
      </div>
      <div class="item">
      <a href="/SpringMVCHibernate/mobile">
        <img src="/SpringMVCHibernate/resources/images/8.jpg" alt="Mobile" style="width:100%;">
        </a>
      </div>
   
      <div class="item">
      <a href="/SpringMVCHibernate/camera">
        <img src="/SpringMVCHibernate/resources/images/5.jpg" alt="Camera" style="width:100%;">
        </a>
      </div>
    </div>
 
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
		
		
		
		
		
		
		<c:if test="${!empty listProducts}">
		<div class="container-fluid">
			<div class="row">
			<c:forEach items="${listProducts}" var="product">
				<div class="col-sm-4">
					<a href="<c:url value='/pdp/${product.id}' />">
					<div class="panel panel-primary">
						<div class="panel-body">					
							<img src="<c:url value="/resources/images/${product.image}"/>" class="img-responsive" style="width:100%" alt="Image">
								<div class="panel-footer">
									<p class="text-center">${product.name}</p>
									<p class="text-center"><span>&#x20B9</span>${product.price}</p>
								</div>
						</div>
					</div>
					</a> 
				</div>
				</c:forEach>
			</div>
			
		</div>
		</c:if>
		
		<!-- including external Header jsp file -->
		<jsp:include page="footermain.jsp" />
		
	</body>
</html>