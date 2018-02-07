<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>Login</title>

</head>
<body>
	

	<c:url var="addAction" value="Register/login/add"></c:url>

	<form:form action="${addAction}" commandName="login">
	

	<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Login</h4>
        </div>
        <div class="modal-body">
          <div>
			<table>
				<tr>
					      <td>Email*:</td>
					      <td class="email"><input type="text" name="email"size=25 placeholder="Enter Email"></td>
				   </tr>
					<tr>
                   <tr>
					      <td>Password*:</td>
					      <td class="pwd"><input type="password" name="password"size=25 placeholder="Enter Password"></td>
				   </tr>
           
           			<tr>
           			</tr>
                   <tr>
					      
					      <td></td>
					      <td><input type="submit" value="Submit"  class="Login"/>
	
		
						&nbsp;New to Valtech_ Store? <a href="Register/register">Register</a></td>
					</tr>
</table>
</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
	</form:form>
	
</body>
</html>
