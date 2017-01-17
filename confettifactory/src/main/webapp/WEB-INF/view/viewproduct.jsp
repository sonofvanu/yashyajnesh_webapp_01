<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<c:import url="/head-meta" />

</head>

<body>
	<c:import url="/head" />
	<br>


	<script type="text/css">
</script>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-centered">
				<div class="table-responsive">


					<table style="width: 80%;" class="table center">
					
					<tr>
									<td colspan="2"><img src="${pageContext.request.contextPath}/${ProductImage}"></img></td>
									
								</tr>
								
						<tr>
							<td><label>Product Name:</label></td>
							<td>${ProductName}</td>

						</tr>
						<tr>
							<td><label>Product Category:</label></td>
							<td>${ProductCategory}</td>

						</tr>

						<tr>
							<td>Product Price:</td>
							<td>${ProductPrice}</td>
						</tr>
						
						<% if (request.isUserInRole("ADMIN"))
    			{
    			%>
						<tr>
							<td>Product Quantity:</td>
							<td>${ProductQuantity}</td>
						</tr>
						<%
    			}
				%>
						<tr>
							<td>Stall Name:</td>
							<td>${ProductDescription}</td>
						</tr>

	<form action="${pageContext.request.contextPath}/addToCart" method="post">
		<input type="hidden" value="${ProductId}" name="pid" />
		
		<tr>
		<!-- it is used for not shown this option to admin user -->
			<%
 			if (!request.isUserInRole("ADMIN"))
 			{
 			%>
 		<td>Qty</td>
		<td><input type="number" value="1" min="1" max="10" name="pqty" class="form form-input" /></td>
 			<%
 			}
 			%>
			
			</tr>
		
			<tr>
		<!-- it is used for not shown this option to admin user -->
			<%
 			if (!request.isUserInRole("ADMIN"))
 			{
 			%>
 			<td></td>
			<td><input type="submit" value="Add To Cart" class="btn btn-success"/></td>
 			<%
 			}
 			%>
		
			
			</tr>
		
			</form>



			</table>

				</div>
			</div>
		</div>
	</div>