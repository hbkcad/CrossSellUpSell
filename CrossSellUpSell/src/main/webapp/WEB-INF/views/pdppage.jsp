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
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script> -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="<c:url value="/resources/css/stylesheetmain.css"/>" rel="stylesheet">
	</head>
	<body>
		<jsp:include page="headermain.jsp" />
		
		
		<div class="container">
			<div class="row row-padding">
				<div class="col-lg-6">
					<img src="<c:url value="/resources/images/${product.image}"/>" class="img-responsive" style="width:100%" alt="Image">
				</div>
				
				<div class="col-lg-6">
				<c:set var = "cur_price"  value = "${product.price}"/>
				<c:choose>
				
				<c:when test="${cur_price<25000}">
				<c:set var = "up_price"  value = "${cur_price+5000}"/></c:when>
				<c:when test="${cur_price>35000}">
				<c:set var = "up_price"  value = "${cur_price+35000}"/></c:when>
				<c:when test="${cur_price>25000}">
				<c:set var = "up_price"  value = "${cur_price+10000}"/></c:when>
				</c:choose>
				<c:set var = "cur_cat"  value = "${product.cid}"/>
				<c:set var = "cur_pid"  value = "${product.id}"/>
					<h2>${product.name}</h2>
					<hr>
					<p><span>&#x20B9</span>${product.price}</p>
					<p>${product.description}</p>
					<button class="btn-lg" onclick="/Cart/tocart">Add to cart </button>
				</div>
			</div>
			
			<hr>
			
			<h3>Usually bought together</h3>
			<c:if test="${!empty listAccessory}">
			<div class="row row-padding">
			<c:forEach items="${listAccessory}" var="accessory">
			<c:if test ="${accessory.id==cur_pid}">
				<div class="col-sm-4">
				
				<div class="panel panel-primary">
				<div class="mycheckbox">
						<input type="checkbox" value=""/>
					</div>
					
						<div class="panel-body">
						
							<img src="<c:url value="/resources/images/${accessory.aimage}"/>" class="img-responsive" style="width:100%" alt="Image">
								
								<div class="panel-footer">
									<p class="text-center">${accessory.aname}</p>
									<p class="text-center"><span>&#x20B9</span>${accessory.aprice}</p>
								</div>
						</div>
					</div>
					
				</div>
				</c:if>
				</c:forEach>
			</div>
			</c:if>
			
			<hr>
			
			<h3>You may also like</h3>
			<c:if test="${!empty listProducts}">
			<div class="row row-padding">
			<c:forEach items="${listProducts}" var="product">
			<c:if test ="${product.price< up_price && product.price>cur_price  && product.cid==cur_cat}">
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
				</c:if>
				</c:forEach>
				
			</div>
			</c:if>
			
		</div>
		
		
		
		<!-- including external Footer jsp file -->
		<jsp:include page="footermain.jsp" />
		
	</body>
</html>