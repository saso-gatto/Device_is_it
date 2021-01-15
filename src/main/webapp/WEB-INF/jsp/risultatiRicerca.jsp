<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Device Is It</title>	
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet"> <!--  icone cancella e modifica contenuto -->
  	<link rel="stylesheet" href="css/ricerca.css" type="text/css"/>
	<jsp:include page="./navbar.jsp" />
  		
</head>
<body>


   <p id="titolo" style="text-align:left; padding-left:20px"> Risultati di Ricerca: </p>
   
   
     <!--  SMARTHPONE -->
   
   <c:if test="${listaSmartphone.size() > 0}"> 
   		<p id="titolo" style="text-align:center"> Smartphone</p>
	</c:if>
	
	<section id="schede"> 	
	 <div class="container">
	 	<div class="row justify-content-center">   
			 	
		   <c:forEach var="device" items="${listaSmartphone}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->
			   <div class="col-md-4 col-lg-3">
			   
			   		<c:if test="${usernameLogged == 'admin@admin.it'}">   <!--  se è loggato l'admin -->
					    <a href="#" class="nav-link dropdown-toggle" style="padding: 0px" data-toggle="dropdown"><i class="icon-cog"></i></a>
					    <p>  Codice device: ${device.idDevice}</p>                     
					    
	                    <div class="dropdown-menu">
	                        <a href="#" class="dropdown-item"> <i class="icon-fixed-width icon-pencil"></i> Modifica</a>
	                        <a href="#" class="dropdown-item"> <i class="icon-fixed-width icon-trash"></i> Cancella</a>
	                    </div>
                    </c:if>
                    
				    <div class="cardDevice" style="border-radius:30px">    
				       <div class="img-hover-zoom img-hover-zoom--basic">
				          <img class="imgDevice" src="${device.img}"> 
				       </div>
				       <div class="card-body text-center">
				          <h5 class="card-title">${device.modello}</h5> 
				          <form id="formSchedaTecnica" method="post" action="/schedaTecnica">
				          	<input type="hidden" id="idDevice" name="idDevice" value="${device.idDevice}">			          	
							<button type="submit" style="border-radius:15px; margin-top:15px; height:45px;" class="btn btn-outline-primary">Vai alla scheda tecnica</button>
	                       </form>			      	
				      </div>      
				    </div>
			   </div>	
	      </c:forEach>		
	      
		</div>
	  </div>
    </section>
    
    
    
    
    
    
    <!--  Computer -->
   
   <c:if test="${listaComputer.size() > 0}"> 
   		<p id="titolo" style="text-align:center"> Computer</p>
	</c:if>
			
	<section id="schede"> 	
	 <div class="container">
	 	<div class="row justify-content-center">   
			 	
		   <c:forEach var="device" items="${listaComputer}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->
			   <div class="col-md-4 col-lg-3" >
			   
			 	  <c:if test="${usernameLogged == 'admin@admin.it'}">   <!--  se è loggato l'admin -->
					    <a href="#" class="nav-link dropdown-toggle" style="padding: 0px" data-toggle="dropdown"><i class="icon-cog"></i></a>
					    <p>  Codice device: ${device.idDevice}</p>                     
					    <div class="dropdown-menu">
	                        <a href="#" class="dropdown-item"> <i class="icon-fixed-width icon-pencil"></i> Modifica</a>
	                        <a href="#" class="dropdown-item"> <i class="icon-fixed-width icon-trash"></i> Cancella</a>                      
	                    </div>
                    </c:if>
			   
				    <div id="schedaTecnica" class="cardDevice" style="border-radius:30px">    
				       <div class="img-hover-zoom img-hover-zoom--basic">
				          <img class="imgDevice" src="${device.img}"> 
				       </div>
				       <div class="card-body text-center">
				          <h5 class="card-title">${device.modello}</h5> 
				          <form id="formSchedaTecnica" method="post" action="/schedaTecnica">
				          	<input type="hidden" id="idDevice" name="idDevice" value="${device.idDevice}">			          	
							<button type="submit" style="border-radius:15px; margin-top:15px; height:45px;" class="btn btn-outline-primary">Vai alla scheda tecnica</button>
	                       </form>			      	
				      </div>      
				    </div>
			   </div>	
	      </c:forEach>		
	      
		</div>
	  </div>
    </section>
    
    
    
    
    
    
    <!-- Aricoli -->
   
   <c:if test="${listaArticoli.size() > 0}"> 
   		<p id="titolo" style="text-align:center"> Articoli</p>
	</c:if>
   
        <section class="latest-blog">           
	     <div class="container">
	     <div class="row justify-content-center">   
		         <c:forEach var="contenuto" items="${listaArticoli}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->			  
					 <div class="col-md-6 col-lg-6" >
					 	<div class="card">
			           
			           <c:if test="${usernameLogged == 'admin@admin.it'}">  <!--  se è loggato l'admin -->
		    			  <div id="icons" style="padding: 10px 10px 10px">				          
			                 <button type="button" class="btn btn-sm btn-outline-danger"><i class="icon-trash"></i> Cancella</button>
						     <button type="button" class="btn btn-sm btn-outline-info" style="float:right"><i class="icon-cog"></i> Modifica</button> 				 
			              </div>			        
		    		   </c:if>
			           
			           <img class="card-img-top" src="${contenuto.img}" >
			              <div class="card-body">				              
				              <h5 class="card-title">${contenuto.titolo}</h5>
				              <p class="card-text"> ${contenuto.anteprima} </p>
				              <p class="card-text"><i class="fas fa-calendar-alt"></i>  ${contenuto.data}</p>
				              <form id="formArticolo" method="post" action="Contenuto" align="right">
				                 <input type="hidden" id="id" name="id" value="${contenuto.id}">                 
				                 <button  class="btn btn-outline-success btn-sm" type="submit">Continua a leggere</button>
				              </form>			               
			          	  </div>
			          	</div>			               
			          </div>                        
				   </c:forEach>
		  	</div>
	     </div>
    </section>
   
   
   
   

   
   <!-- RECENSIONI -->
   <c:if test="${listaRecensioni.size() > 0}"> 
   		<p id="titolo" style="text-align:center"> Recensioni</p>
	</c:if>	
	
      <section class="latest-blog" >           
	     <div class="container">
			 <div class="row justify-content-center">
			
			
		         <c:forEach var="contenuto" items="${listaRecensioni}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->			  
					 <div class="col-md-6 col-lg-6" >
					 	<div class="card">			           
				           <c:if test="${usernameLogged == 'admin@admin.it'}">  <!--  se è loggato l'admin -->
			    			  <div id="icons" style="padding: 10px 10px 10px">				          
				                 <button type="button" class="btn btn-sm btn-outline-danger"><i class="icon-trash"></i> Cancella</button>
							     <button type="button" class="btn btn-sm btn-outline-info" style="float:right"><i class="icon-cog"></i> Modifica</button> 				 
				              </div>			        
			    		   </c:if>
			           
				           <img class="card-img-top" src="${contenuto.img}" >
				              <div class="card-body">				              
					              <h5 class="card-title">${contenuto.titolo}</h5>
					              <p class="card-text"> ${contenuto.anteprima} </p>
					              <p class="card-text"><i class="fas fa-calendar-alt"></i>  ${contenuto.data}</p>
					              <form id="formArticolo" method="post" action="Contenuto" align="right">
					                 <input type="hidden" id="id" name="id" value="${contenuto.id}">                 
					                 <button  class="btn btn-outline-success btn-sm" type="submit">Continua a leggere</button>
					              </form>		
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