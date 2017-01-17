<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>
<c:import url="/head-meta"/>
</head>
<body>
 <c:import url="/head"/>
<br>
<h2 style="color:gray;text-align:center;font-size:30">Our Service</h2>
<table style="padding:8px;width:100%">
	<tr>
		<th>Services</th>
		<th>Delivery</th>
	</tr>
	<tr>
	<td>
		<ul style="list-style-type:circle">
		<li>We have mutual contract with various sweets stalls in and around Coimbatore.</li>
		<li>We have Catering Professionals for preparing homemade sweets.</li>
		<li>Order Sweets depending on your requirement.</li>
		<li>We deliver it to your location on time.</li>
		<li>Currently we establish our service with in Coimbatore Circle.</li>
		<li>Special offers for Bulk Orders and during Festival Season.</li>
		</ul>
	</td>
	<td>
		<a href="${pageContext.request.contextPath}/aboutus">
		<img src="${pageContext.request.contextPath}/resources/image/delivery.jpg" alt="Delivery" width="150" height="350" ></a>
	</td>
	</tr>
</table>
</body>
</html>