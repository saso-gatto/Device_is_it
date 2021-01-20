<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Device Is It</title>
		
		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet"> <!--  icone cancella e modifica contenuto -->
	  	<link rel="stylesheet" href="css/listaUtenti.css" type="text/css"/>
		<jsp:include page="./navbar.jsp" />
	</head>
	
	<body>
	
		<p id="titolo" style="text-align:center"> Lista Utenti: </p>
		
		<section id="schede"> 	
		 	<div class="container">
			 	<div class="row justify-content-center">   
					 	
				   <c:forEach var="utente" items="${tuttiUtenti}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->
						    
						<div class="col-md-4 col-lg-3">
				    
						    <c:if test="${usernameLogged == 'admin@admin.it'}">   <!--  se è loggato l'admin -->
							    <a href="#" class="nav-link dropdown-toggle" style="padding: 0px" data-toggle="dropdown"><i class="icon-cog"></i></a>					                       					  
			                    <div class="dropdown-menu">	                        
			                        <!--  <a class="dropdown-item" data-id-device="${device.idDevice}" data-toggle="modal" data-target="#confermaEliminazione" ><i class="icon-fixed-width icon-trash"></i> Cancella</a>							 							     						    						    	                    	
			                       <form id="formSchedaTecnica" method="post" action="setDevice">
						          		<input type="hidden" id="idDevice" name="idDevice" value="${device.idDevice}">			          	
										<button class="dropdown-item" type="submit" class="btn"> <i class="icon-fixed-width icon-pencil"></i> modifica</button>
			                       </form>-->
			                    
			                    </div>
		                    </c:if>
			                    
			                    <div class="card" style="border-radius:30px">    
						       <div class="card-body text-center">
						          <h5 class="card-title">${utente.nome} ${utente.cognome} </h5> 
						          <p class="card-text">${utente.username}</p>
								  <a href="#" class="btn btn-primary">Visualizza profilo completo</a>			      	
						      </div>      
						    </div>
					   </div>
					   	
			      </c:forEach>		
			      
				</div>
		  </div>
    </section>
	
	</body>
	
	<jsp:include page="./footer.jsp" />
	
</html>