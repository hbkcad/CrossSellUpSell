<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:if test="${!empty listProducts}">
	<table class="tg">
	<tr>
		<th width="80">category ID</th>
		<th width="80">Product ID</th>
		<th width="120">Product Name</th>
		<th width="120">Product Description</th>
		
		<th width="100">Price</th>
		<th width="60">path</th>
		<th width="150">Image</th>
		
	</tr>
	<c:forEach items="${listProducts}" var="product">
	
		<tr>
			<td>${product.cid}</td>
			<td>${product.id}</td>
			<td>${product.name}</td>
			<td>${product.description}</td>
			
			<td>${product.price}</td> 
			 
			<td><img src="E:/images/${product.image}"  height="40" width="60"/> </td>
		  
			
		</tr>
	</c:forEach>
	</table>
</c:if>






</body>
</html>