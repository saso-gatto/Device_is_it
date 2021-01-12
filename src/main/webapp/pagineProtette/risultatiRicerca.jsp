<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Device Is It</title>	
  	<link rel="stylesheet" href="css/ricerca.css" type="text/css"/>
	<jsp:include page="./navbar.jsp" />
  		
</head>
<body>
   <p id="titolo" style="text-align:left; padding-left:20px"> Risultati di Ricerca: </p>
   
   <section id="schede">   
        
    <div class="container">
          
       <c:forEach var="articolo" items="${listaArticoli}">  
			  <div class="row">
				  	<div class="card bg-dark text-white">
						  <img class="card-img" src="${articolo.img}" alt="Card image">
						  <div class="card-img-overlay">
						    <h5 class="card-title">${articolo.titolo}</h5>
						    <p class="card-text">${articolo.anteprima}...</p>
						    <a href="#" class="card-link">Continua a leggere</a>
						  </div>
						</div>
				</div>
     	</c:forEach>      
     
      </div>
   </section>
   
   <!-- fino a qui funziona 
   
   
   
   <section id="schede">   
        
    <div class="container">
          
       <c:forEach var="recensione" items="${listarecensioni}">  
			  <div class="row">
				  	<div class="card bg-dark text-white">
						  <img class="card-img" src="${recensione.img}" alt="Card image">
						  <div class="card-img-overlay">
						    <h5 class="card-title">${recensione.titolo}</h5>
						    <p class="card-text">${recensione.anteprima}...</p>
						    <a href="#" class="card-link">Continua a leggere</a>
						  </div>
						</div>
				</div>
     	</c:forEach>      
     
      </div>
   </section> -->
   
   
   
   
   
</body>
</html>