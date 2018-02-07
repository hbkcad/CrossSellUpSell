<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>Category Page</title>
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
		<h1>Add a Category</h1>

		<c:url var="addAction" value="/Category/category/add"></c:url>

		<form:form action="${addAction}" commandName="category">
			<table>
				<c:if test="${!empty category.cname}">

					<tr>
						<td><form:label path="cid">
								<spring:message text="CID" />
							</form:label></td>
						<td><form:input path="cid" readonly="true" size="8"
								disabled="true" /> <form:hidden path="cid" /></td>
					</tr>
				</c:if>
				<tr>
					<td><form:label path="cname">
							<spring:message text="Category Name" />
						</form:label></td>
					<td><form:input path="cname" /></td>
				</tr>

				<tr><td></br></td></tr>


				<tr>
					<td colspan="3" style="padding-left:25%;"><c:if test="${!empty category.cname}">
							<input type="submit"
								value="<spring:message text="Edit Category"/>" />
						</c:if> <c:if test="${empty category.cname}">
							<input type="submit"
								value="<spring:message text="Add Category"/>" />
								<input type="button" value="Back" onclick="goBack()" >
						</c:if></td>
				</tr>
				
			</table>
		</form:form>
		</div>
		<br>
		<h3>Categories List</h3>
		<c:if test="${!empty listCategory}">
			<table class="tg">
				<tr>
					<th width="80">Category ID</th>
					<th width="120">Category Name</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
				<c:forEach items="${listCategory}" var="category">
					<tr>
						<td>${category.cid}</td>
						<td>${category.cname}</td>
						<td><a
							href="<c:url value='/Category/edit/${category.cid}' />">Edit</a></td>
						<td><a
							href="<c:url value='/Category/remove/${category.cid}' />">Delete</a></td>
					</tr>
				</c:forEach>

			</table>



		</c:if>
	</div>
</body>
</html>