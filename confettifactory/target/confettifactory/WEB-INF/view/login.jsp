<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<html>
<head>
<c:import url="/head-meta"/>

</head>

<body>
<c:import url="/head"/>
<br>
<center>
	<h3>Login</h3>
</center>
				<script type="text/css">
					</script>
					
					<div class="container">
					<div class="row">
					    <div class="col-lg-12 col-centered">
					    	<div class="table-responsive">
					    	<form action="${pageContext.request.contextPath}/login" method="post">
					    		    		
					    		<c:if test="${param.error != null}">
	                                <div class="alert alert-danger">
	                                    <p>Invalid Username and password.</p>
	                                </div>
	                            </c:if>
	                            <c:if test="${param.logout != null}">
	                                <div class="alert alert-success">
	                                    <p>You have been logged out successfully.</p>
	                                </div>
	                            </c:if>
            
            <table style="width: 60%;" class="table center">
							  	<tr>
							  		<td><label for="email">Username:</label></td>
							  		<td><input type="text" class="form-control" id="email" name="email" autofocus="true" required></td>
							  	</tr>
							  	
							  	<tr>
							  		<td><label for="password">Password:</label></td>
							  		<td><input type="password" class="form-control" id="password" name="password" required></td>
							  	</tr>
							  	
							  	<input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
							  	
							  	<tr>
							  		<td colspan="2" >
							  		<div class="row">
									    <div class="col-md-2 col-md-offset-5"> <button type="submit" class="btn btn-default" style="background-color: FireBrick; color:White">Submit</button> </div>
									</div>
							  		</td>
							  	</tr>
							  	
							  </table>
							  </form>
							</div>
					    </div>
					</div>
					</div>
							


</body>



</html>