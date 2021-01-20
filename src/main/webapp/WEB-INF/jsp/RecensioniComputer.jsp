<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
   
    <link rel="stylesheet" href="css/recensioni.css" type="text/css"/>
    
    <title>Device Is It</title> 
	<jsp:include page="./navbar.jsp" /> 	
	
</head>
<body>
  <p id="titolo" style="text-align:center"> Recensioni Computer</p>


	<c:if test="${usernameLogged == 'admin@admin.it'}">  <!--  se è loggato l'admin -->
	   	<div class="container text-center" >
	   		 <button type="button" class="btn btn-primary " id="addContenuto"  data-toggle="modal" data-target="#scegliContenuto">Aggiungi un nuovo Contenuto</button>		   	
		</div>    	
	</c:if> 
	
	<div class="modal fade" id="scegliContenuto">
	    <div class="modal-dialog">
	      <div class="modal-content">
	             
	        <!-- Modal body -->
	        <div class="modal-body">
	
				<div class="myform form ">
					<div class="logo mb-3">
						 <div class="col-md-12 text-center">
							<button type="button" class="close" data-dismiss="modal">×</button>
							 <br> <br>
							<h3 class="titolo-loginForm">Schegli il contenuto da aggiungere</h3>
							 <br>
						 </div>
					</div>
	                   
	                   <a class="btn" href="newDevice"> <button type="button" class="btn btn-outline-success btn-block">Device</button> </a>
	                      <br>
	                   <a class="btn" href="newRecensione"> <button type="button" class="btn btn-outline-primary btn-block">Recensione</button> </a>                      									   					  					
				      <br>
					<a class="btn" href="newArticolo"> <button type="button" class="btn btn-outline-info btn-block">News</button> </a>  					 
					 <br>
	                                    
				</div>
			</div>
			 </div>
	     </div>
	 </div>
	
	
	
	

	<c:forEach var="contenuto" items="${listaComputer}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->
 			
			<div class="row justify-content-center">
			  <div class="card">
			    <div class="additional">
			      
			      <div class="user-card">
			        <div class="level center">
			          13 commenti
			        </div>
			        
			        <img width="160" height="110" src="${contenuto.img}" class="center">
			        
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