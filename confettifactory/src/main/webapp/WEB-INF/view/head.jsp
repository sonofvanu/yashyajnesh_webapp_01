<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<style>
#p01{background-color:brown;
		color:wheat;
		font-family:verdana;
		font-size:400%;	
		text-align:center}

#p02 {
    list-style-type: none;
    background-color: linen;
}

#p03 {
    float: left;
}
#p04{float:right;}

li a, .dropbtn  {
    display: block;
    color: lightsalamon;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: silver;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
}


</style>

<div id="p01">Sweets Park</div>
<ul id="p02" style="z-index:500;">
  <li id="p03"><a href="${pageContext.request.contextPath}/index"><span class="glyphicon glyphicon-home"></span> Home</a></li>
  <li id="p03"><a href="${pageContext.request.contextPath}/aboutus"><span class="glyphicon glyphicon-info-sign"></span> Our Service</a></li> 
   <li class="dropdown" style="z-index:500;">
    <a href="#" class="dropbtn">Favourites</a>
    <div class="dropdown-content">
      <a href="${pageContext.request.contextPath}/product?search=Halwa">Halwa</a>
      <a href="${pageContext.request.contextPath}/product?search=Milk Sweet">Milk Sweets</a>
      <a href="${pageContext.request.contextPath}/product?search=Sugar Syrup Sweets">Sugar Syrup Sweets</a>
    </div>
  </li>
  <li class="dropdown" style="z-index:500;">
    <a href="#" class="dropbtn">Prefered Stalls</a>
    <div class="dropdown-content">
      <a href="${pageContext.request.contextPath}/product?search=Annapurna">Annapurna Hotel</a>
      <a href="${pageContext.request.contextPath}/product?search=Ananda Bhavan">Ananda Bhavan</a>
      <a href="${pageContext.request.contextPath}/product?search=Sri Krishna Sweets">Sri Krishna Sweets</a>
    </div>
  </li>
  <li id="p03"><a href="${pageContext.request.contextPath}/contactus">Contact us</a></li>
  
  
  <li id="p03"><a href="${pageContext.request.contextPath}/product">Products</a></li>
  <% if (request.isUserInRole("ADMIN"))
    			{
    			%>
  <li id="p03"><a href="${pageContext.request.contextPath}/category">Categories</a></li>
  <%
    			}
				%>
				
				<% if (request.isUserInRole("USER"))
    			{
    			%>
  <li id="p04"><a href="${pageContext.request.contextPath}/initiateFlow"><span class="glyphicon glyphicon-shopping-cart"></span> View Cart</a></li>
  <%
    			}
				%>
  	<c:choose>
  		<c:when test="${not empty pageContext.request.userPrincipal}">
  		<li id="p04"><a href="${pageContext.request.contextPath}/logout">Log Out</a></li>
  		<li id="p04"><h4><span class="glyphicon glyphicon-user"></span> ${pageContext.request.userPrincipal.name}</h4></li>
  		</c:when>
  	
  		<c:otherwise>
  		<li id="p04"><a href="${pageContext.request.contextPath}/signup">Register</a></li>
  		<li id="p04"><a href="${pageContext.request.contextPath}/loginpage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
  		</c:otherwise>
  		
  	</c:choose>
  	
  
</ul>
    
<footer style="position:fixed; bottom:0px; background-color:brown; color:wheat; text-align:center; hight:10px; width:100%; z-index: 50;">
 &copy; Confetti Factory
</footer>