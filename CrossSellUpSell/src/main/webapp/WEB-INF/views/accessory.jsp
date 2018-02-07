<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Product Page</title>
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="<c:url value="/resources/css/stylesheetmain.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<style type="text/css">
.body {
	background-color: #b3d9ff;
}
.container-fluid {
}
h1 {
	color: #4d004d;
}
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9;
}
</style>
<script>
function goBack() {
    window.history.back()
}
</script>
</head>
<body class="body">
	<div class="container-fluid">
	   <div class="box">
<h1>
	Add a Accessory
</h1>

<c:url var="addAction" value="/Accessory/accessory/add" ></c:url>

<form:form action="${addAction}" commandName="accessory">
<table>
	<c:if test="${!empty accessory.aname}">
	<tr>
		<td>
			<form:label path="aid">
				<spring:message text="ID"/> 
			</form:label>
		</td>
		<td>
			<form:input path="aid" readonly="true" size="8"  disabled="true" />
			<form:hidden path="aid" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
		<form:label path="id">
		<spring:message text="Product Name"/>
		</form:label></td>
		<td>
		<form:select path="id">
       <c:forEach items="${listProducts}" var="product">
              <option value="${product.id}">${product.name}</option>
       </c:forEach>
      </form:select>
       </td>
	</tr>
	
	
	<tr>
		<td>
			<form:label path="aname">
				<spring:message text="Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="aname" />
		</td> 
	</tr>
	
	<tr>
		<td>
			<form:label path="aprice">
				<spring:message text="Price"/>
			</form:label>
		</td>
		<td>
			<form:input path="aprice" />
		</td>
	</tr>
	<tr>
		<td>
			
				<b>Image</b>
			
		</td>
		<td>
			<input type="file" name="aimage">
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty accessory.aname}">
				<input type="submit"
					value="<spring:message text="Edit accessory"/>" />
			</c:if>
			<c:if test="${empty accessory.aname}">
				<input type="submit"
					value="<spring:message text="Add accessory"/>" />
					<input type="button" value="Back" onclick="goBack()" >
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
</div>
<br>
<input type="hidden" id="path" name="path" value="C:\Users\Public\Pictures\Sample Pictures">
<h3>Accessory List</h3>
<c:if test="${!empty listAccessory}">
	<table class="tg">
	<tr>
		<th width="80">accessory ID</th>
		<th width="120">accessory Name</th>
		<th width="100">Price</th>
		
		<th width="150">Image</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listAccessory}" var="accessory">
	
		<tr>
			<td>${accessory.aid}</td>
			<td>${accessory.aname}</td>
			<td>${accessory.aprice}</td>
			
			<td><img src="<c:url value="/resources/images/${accessory.aimage}"/>"  height="40" width="60"/> </td>
		  
			<td><a href="<c:url value='/edit/${accessory.aid}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${accessory.aid}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</div>
</body>
</html>
