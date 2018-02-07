<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Person Page</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Valtech Store</title>
		
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link href="<c:url value="/resources/css/stylesheetmain.css"/>" rel="stylesheet">
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script> -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
	<script type="text/javascript">
	function validate(event)
	{
			event.preventDefault();

			var password=document.getElementById("password").value;
			var confirmpassword=document.getElementById("confirmpassword").value;
			var email=document.getElementById("email").value;
			var atpos = email.indexOf("@");
			var dotpos = email.lastIndexOf(".");
			document.getElementById("emailerror").innerHTML="";
			document.getElementById("passworderror").innerHTML="";
	
			
			if(password=="")
			{ 
			document.getElementById("passworderror").innerHTML="Enter Password";
			document.index.name.focus();
			return false;
			}
			else if(password.length < 8)
			{ 
			document.getElementById("passworderror").innerHTML="Password Should Be atleast 8 characters";
			document.index.name.focus();
			return false;
			}
			else if(!(confirmpassword==password))
			{ 
			document.getElementById("passworderror").innerHTML="Passwords should be the same";
			document.index.name.focus();
			return false;
			}
			else if(email=="")
			{
			document.getElementById("emailerror").innerHTML="Email Is Mandetory";
			document.index.name.focus(); 
			return false;
			}
			else if((atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length))
			{
			document.getElementById("emailerror").innerHTML="Provide valid Email";
			document.index.name.focus(); 
			return false;
			}
			else
			{ 
			document.index.submit();
			}
			}
</script>

</head>
</head>
<body>
<jsp:include page="headermain.jsp" />
<h1>
	Registration Form
</h1>
 <h3 class="errorMessage">${message}</h3>
<c:url var="addAction" value="/Register/register/add" ></c:url>

<form:form name="index" action="${addAction}" commandName="register" onSubmit="return validate(event);">
<table>
	<c:if test="${!empty register.email}">
	<tr>
		<td>
			<form:label path="id">
			 
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="email">
			
     		<spring:message text="Email*"/>
			</form:label>
		</td>
		<td>
			<form:input type="text" path="email" />
		</td> 
		<td>
			<div style="color:red;" class="errorMessage"id="emailerror"></div>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="password">
			<spring:message text="Password*"/>
			</form:label>
			</td>
		<td>
			<form:input type="password" path="password" />
		</td>
		<td>
			<div style="color:red;" class="errorMessage"id="passworderror"></div>
		</td>
	</tr>
		<tr>
		<td>
			<form:label path="confirmpassword">
				<spring:message text="Confirm Password*"/>
			</form:label>
		</td>
		<td>
			<form:input type="password" path="confirmpassword" />
		</td>
		<td>
			<div style="color:red;" class="errorMessage"id="passworderror"></div>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${empty register.email}">
				<input type="submit" 
					value="<spring:message text="Register"/>" />
					
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
		<jsp:include page="footermain.jsp" />
</body>
</html>
