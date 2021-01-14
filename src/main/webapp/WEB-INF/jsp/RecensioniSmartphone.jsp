<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

  	<link rel="stylesheet" href="css/recensioni.css" type="text/css"/>
  	
	<title>Device is it</title>
	<jsp:include page="./navbar.jsp" /> 
	
</head>
<body>

	<p id="titolo" style="text-align:center"> Recensioni Smartphone</p>

          <c:forEach var="contenuto" items="${listaSmartphone}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->
 			
			<div class="row justify-content-center">
			  <div class="card">
			    <div class="additional">
			      
			      <div class="user-card">
			        <div class="level center">
			          13 commenti
			        </div>
			        
			        <img width="100" height="130" src="${contenuto.img}" class="center">
			        
			        <div class="points center">
			          Data: ${contenuto.data}
			        </div>
			      </div>
			
			      <div class="more-info">
			       <h1>${contenuto.titolo}</h1> <br><br>
			      	<form id="formArticolo" method="post" action="Contenuto" align="center">
		                    <input type="hidden" id="id" name="id" value="${contenuto.id}">               
		                    <button type="submit" style="border-radius:15px; margin-top:15px; height:45px;" class="btn btn-primary">Continua a leggere</button>
				    </form>
			      </div>
			      
			    </div>
    
			    <div class="general">
			      <h1>${contenuto.titolo}</h1>
			      <p> ${contenuto.anteprima} </p>
			      <span class="more">Scorri per leggere la recensione</span>
			    </div>
			    
			  </div>
			</div>
  		 </c:forEach>
	

	

 
  
</body>
	<jsp:include page="./footer.jsp" />
</html>