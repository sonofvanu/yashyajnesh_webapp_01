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
	<h3>Add Products Here!!!</h3>
</center>

<div class="form">
<script type="text/css">
					</script>
					
					<div class="container">
					<div class="row">
					    <div class="col-lg-12 col-centered">
					    	<div class="table-responsive">
					    	
					    	<c:if test="${success != null}">
			                <div class="alert alert-success">
			                	<p>${success}</p>
			                </div>
			                </c:if>
			                
			                <c:if test="${error != null}">
			                <div class="alert alert-danger">
			                	<p>${error}</p>
			                </div>
			                </c:if>
					    
	<form:form method="post" action="${pageContext.request.contextPath}/AddProductToDB" modelAttribute="Product" enctype="multipart/form-data">
	
		<!--  -->
		<table style="width: 80%;" class="table center">
			<tr>
				<td><form:label path="productName" for="productName">Product Name:</form:label></td>
				<td><form:input path="productName" type="text"  class="form-control" id="productName"/></td>
				
			</tr>
			
			<tr>
				<td><form:label path="productCategory" for="productCategory">Product Category:</form:label></td>
				<td>
				<form:select path="productCategory" class="form-control select-menu">
											  
											  <c:if test="${not empty Categories}">
											  <c:forEach var="cat" items="${Categories}">
											  	<c:choose>
											  		<c:when test="${cat.categoryName == Product.productCategory}">
											  			<option value="${cat.categoryName}" selected="selected">${cat.categoryName}</option>
											  		</c:when>
											  		
											  		<c:otherwise>
											  			<option value="${cat.categoryName}">${cat.categoryName}</option>
											  		</c:otherwise>
											  		
											  	</c:choose>
											  </c:forEach>
											  </c:if>
											  
											  <c:if test="${empty Categories}">
											  <option value="None">None</option>
											  </c:if>
											  								  
											</form:select>
											</td>
			</tr>
			
			<tr>
				<td><form:label path="productPrice" for="productPrice">Product Price:</form:label></td>
				<td><form:input path="productPrice" type="productPrice"  class="form-control" id="productPrice" autofocus="true"/></td>
				<td class="alert alert-danger"><form:errors path="productPrice"/></td>
			</tr>
			
							  	
			<tr>
				<td><form:label path="productQuantity" for="productQuantity">Product Quantity:</form:label></td>
				<td><form:input path="productQuantity" type="productQuantity" class="form-control" id="productQuantity"/></td>
				<td class="alert alert-danger"><form:errors path="productQuantity"/></td>
			</tr>
							  	
			<tr>
				<td><form:label path="productFile" for="productFile">Product Image:</form:label></td>
				<td><form:input path="productFile" type="file" class="form-control" id="productFile"/></td>
				<td class="alert alert-danger"><form:errors path="productFile" /></td>
			</tr>
				
			<tr>
				<td><form:label path="productDescription" for="productDescription">Product Description:</form:label></td>
				<td><form:textarea path="productDescription" class="form-control" id="productDescription"></form:textarea></td>
				<td class="alert alert-danger"><form:errors path="productDescription" /></td>
			</tr>
							  	
			<tr>
				<td colspan="2" >
					<div class="row">
					    <div class="col-md-2 col-md-offset-5"> <button type="submit" class="btn btn-default">Submit</button> 
					    </div>
					</div>
		  		</td>
		  	</tr>
							  	
		  </table>
		<!--  -->
	
	</form:form>	
</div>		
