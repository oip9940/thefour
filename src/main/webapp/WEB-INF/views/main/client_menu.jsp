<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../inc/header.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Cookie" rel="stylesheet">
<link rel="stylesheet" href="resources/css/menu.css">
 <link rel='stylesheet' href="resources/css/reservation.css?after" />
<!-- partial:index.partial.html -->
<div class="wrapper">

  <h2>Our Menu</h2>
  
  
  
	  <div class="buttons-container">
	  	<c:forEach var="vo" items="${list}">
	    	<a href="#" class="button button--is-active" data-target="pizzaMenu">${vo.food_code}</a>
	    </c:forEach>
	  </div>


  <div class="menu menu--is-visible" id="pizzaMenu">
  	<c:forEach var="vo" items="${list}">
	    <div class="item">
	      <div class="item__header">
	        <h3 class="item__title">${vo.food_name}</h3>
	        <span class="item__dots"></span>
	        <span class="item__price">$${vo.food_price}</span>
	      </div>
	      <p class="item__description">${vo.food_contents}</p>
	    </div>
	</c:forEach>


</div>
</div>
  <script  src="resources/js/menu.js"></script>

  <%@ include file="../inc/footer.jsp" %>
