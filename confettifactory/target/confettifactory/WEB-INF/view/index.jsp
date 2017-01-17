<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
 <html>
 <head>
 <c:import url="/head-meta"/>
<style>

.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;

</style>
 </head>
 
 <body>
 
 <c:import url="/head"/>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="${pageContext.request.contextPath}/resources/image/img1.jpg" alt="Kaju" width="460" height="345">
      </div>
	  <div class="item">
        <img src="${pageContext.request.contextPath}/resources/image/img2.jpg" alt="one" width="460" height="345">
      </div>
	  <div class="item">
        <img src="${pageContext.request.contextPath}/resources/image/img3.jpg" alt="Tirunelveli Halwa" width="460" height="345">
      </div>
	  <div class="item">
        <img src="${pageContext.request.contextPath}/resources/image/img4.jpg" alt="Sweet" width="460" height="345">
      </div>
	  </div>
<!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div><br>
 	
 	<div class="jumbotron text-center">
  <h1>Sweetspark</h1>
  <p>Delivering Sweets to you!</p>
</div>
  
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Carrot Halwa</h3>
      <a href="${pageContext.request.contextPath}/product">
      <img class="img-circle"; src="${pageContext.request.contextPath}/resources/image/carrot halwa.jpg" alt="Carrot"; style="width:180px; height:140px;"></a>
      <p>The dessert is favorite all over India. It is traditionally eaten during all of the festivals in India, mainly on the occasion of Diwali, Holi, Eid al-Fitr and Raksha Bandhan. 
	It is served hot during the winter.</p>
      <p>Ingredients:Carrots, milk, sugar, ghee, cashews and raisins</p>
    </div>
    <div class="col-sm-4">
      <h3>Badam Halwa</h3>
      <a href="${pageContext.request.contextPath}/product">
      <img class="img-circle"; src="${pageContext.request.contextPath}/resources/image/badam halwa.jpg" alt="Badam"; style="width:180px; height:140px;"></a>
      <p>Badam Halwa is a regal dessert fit for Kings! While the recipe does not call for too many ingredients, nor is the process a complex one, it takes love and 
		time to make a good Badam Halwa.</p>
      <p>Ingredients:Almonds, milk, sugar, ghee</p>
    </div>
    <div class="col-sm-4">
      <h3>Kaju Katli</h3>
      <a href="${pageContext.request.contextPath}/product">
      <img class="img-circle"; src="${pageContext.request.contextPath}/resources/image/img1.jpg" alt="Kaju"; style="width:180px; height:140px;"></a>
      <p>Kaju katli also known as kaju Katari or kaju barfi, is an Indian dessert similar to a barfi.Kaju means cashew nut in Marathi. Barfi is often but not always, 
		made by thickening milk with sugar and other ingredients (dry fruits and mild spices).</p>
      <p>Ingredients: Cashews, milk, sugar, ghee, Almonds and raisins</p>
    </div>
  </div>
</div>
 	

 </body>
 
 </html>