<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  	<link rel="stylesheet" href="css/schedaTecnicaSingola.css" type="text/css"/>
	<title>Device is it</title>
	<jsp:include page="./navbar.jsp" /> 
</head>
<body>

  
  <div class="container" style="margin-top: 50px;">
 	 <div class="container">
  
	  <div class="row">
	  	<div class="container"></div>
		  	<div class="col-4 text-center" style="margin-top: 20px; justify-content: center;">
		  		
		  		<div class="card" style="border-radius:30px; max-width: 300px; min-width: 250px; height: 500px; margin-bottom:10px; margin-left: 5%  ">    			       
			       <c:if test="${usernameLogged != null}"> 
		       		  <div class="img-hover-zoom img-hover-zoom--basic">
			               <img style="margin-left:0px; max-height: 300px;" src="${device.img}"> 
			       	  </div>
		       		  <div class="card-body text-centert">
		          	    <h5 class="card-title">${device.modello}</h5> 			           
			            <form action="#">			             
			              <input type="hidden" id="idDevice" name="idDevice" value="${device.idDevice}">			          	
						  <button id="btnPreferiti" type="button" style="border-radius:15px; margin-top:15px; height:45px;" class="btn btn-outline-warning"> <i class="far fa-star"> </i> aggiungi ai preferiti</button>
	           		   </form>
	           		  </div> 
	           	  </c:if>	           	 
	           	  <c:if test="${usernameLogged == null}"> 
	           	  	<div class="img-hover-zoom img-hover-zoom--basic">
			            <img style="margin-left:0px; max-height: 300px; margin-top: 26%" src="${device.img}"> 
			       	</div>
			    	<h5 style="margin-top: 15%"  class="card-title">${device.modello}</h5>
			      </c:if> 		           		       			         
			    </div>
			    				    
			    <form id="formSchedaTecnica" method="post" action="/schedaTecnica">
		          	<input type="hidden" id="idDevice" name="idDevice" value="${device.idDevice}">			          	
					<button type="submit" style="border-radius:15px; margin-top:15px; height:45px;" class="btn btn-primary">Vai alla recensione</button>
               </form>	
			    	    		  			  
		  	</div>
	  	<div class="col-8">
	  	
		  	<div class="table-users">
			  <div class="header">
			    	Scheda Tecnica   
			  </div>
			  <table>
		  
			      <tr>
			      	<th>Modello</th>
			      	<th>${device.modello}</th>
			      </tr>
			      
			      <tr>
			      	<th>Marca</th>
			      	<th>${device.marca}</th>
			      </tr>
			      
			      <tr>
			      	<th>Memoria</th>
			      	<th>${device.memoria}</th>
			      </tr>
			      
			      <tr>
			      	<th>Ram</th>
			      	<th>${device.ram}</th>
			      </tr>
			      
			      <tr>
			      	<th>Display</th>
			      	<th>${device.display}</th>
			      </tr>
			      
			      <tr>
			      	<th>Batteria</th>
			      	<th>${device.batteria}</th>
			      </tr>
			      
			      <tr>
			      	<th>Fotocamera</th>
			      	<th>${device.fotocamera}</th>
			      </tr>
			      
			      <tr>
			      	<th>CPU</th>
			      	<th>${device.CPU}</th>
			      </tr>
			      
			      <tr>
			      	<th>Peso</th>
			      	<th>${device.peso}</th>
			      </tr>
			      
			      <tr>
			      	<th>OS</th>
			      	<th>${device.os}</th>
			      </tr>
			      
			    </tbody>
			  </table>
			</div>
	  	
	  	</div>
	  </div>
	</div>  
 </div>
 
 	 <div class="modal fade" id="conferma">
	    <div class="modal-dialog">
	      <div class="modal-content">	            
	        <!-- Modal body -->
	        <div class="modal-body">	
				<div class="myform form ">
					<div class="logo mb-3">
						 <div class="col-md-12 text-center">
							<button id="chiudi" type="button" class="close" data-dismiss="modal">×</button>
							 <br>							
				               <p>Devise aggiunto correttamente alla lista dei preferiti<p> 					              		                 
							 <br>
						 </div>
					</div>	                   	               
				</div>
			  </div>
			</div>
	     </div>
	 </div>  


</body>
	<jsp:include page="./footer.jsp" />
	 <script src="./js/schedaTecnicaSingola.js"></script> 
</html>