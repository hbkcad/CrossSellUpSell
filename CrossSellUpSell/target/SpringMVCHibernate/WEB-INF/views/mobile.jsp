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
		<style type="text/css">
		.img-responsive {
			max-height: 370px !important;
			max-width: 200px !important;
			min-height: 370px !important;
			min-width: 200px !important;
			margin-left: 20% !important;
		    margin-right: 0% !important;
		}
		</style>
	</head>
	<body>
	
		<jsp:include page="headermain.jsp" />
		
		<c:if test="${!empty listProducts}">
		<div class="container-fluid">
			<div class="row">
			<c:forEach items="${listProducts}" var="product">
			<c:if test ="${product.cid==1}">
				<div class="col-sm-4">
					<a href="<c:url value='/pdp/${product.id}' />"><div class="panel panel-primary">
						<div class="panel-body">
							<img src="<c:url value="/resources/images/${product.image}"/>" class="img-responsive" style="width:100%" alt="Image">
								<div class="panel-footer">
									<p class="text-center">${product.name}</p>
									<p class="text-center">${product.price}</p>
								</div>
						</div>
					</div></a>
				</div>
				</c:if>
				</c:forEach>
			</div>
			
		</div>
		</c:if>
		<!-- including external Header jsp file -->
		<jsp:include page="footermain.jsp" />
		
	</body>
</html>