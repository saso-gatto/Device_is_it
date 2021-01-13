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
   
   
     <!--  SMARTHPONE -->
   
   <c:if test="${listaSmartphone.size() > 0}"> 
   		<p id="titolo" style="text-align:center"> Smartphone</p>
	</c:if>
	
	<section id="schede"> 	
	 <div class="container">
	 	<div class="row justify-content-center">   
			 	
		   <c:forEach var="device" items="${listaSmartphone}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->
			   <div class="col-md-4 col-lg-3">
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
   
      
   
  <!-- Footer inizio -->
    <footer class="footer-section"  style="margin-top: 50px">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left">
                        <div align="center" class="footer-logo">
                            <a href=""><img src="images/logo_deviceIsIt.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Un team fantastico!</li>
                            <li>Ci puoi trovare nelle sedi: </li>
                            <li> - Reggio </li>
                            <li> - Locri </li>
                            <li> - Cosenza </li>
                            <li> - Cittanova </li>
                            
                        </ul>
                        <div align="center" class="footer-social">
                        
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1">
                    <div align="center" class="footer-widget">
                        <h5>Informazioni</h5>
                        <ul>
                            <li><a href="#">Chi siamo</a></li>
                            
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div align="center" class="footer-widget">
                        <h5>Account</h5>
                        <ul>
                            <li><a href="#">Il mio Account </a></li>
                           
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="newslatter-item">
                        <h5>Iscriviti alla nostra Newsletter</h5>
                        <p> Ricevi notifiche vie E-mail riguardo le ultime news e recensioni del mondo TECH </p>
                        <form action="#" class="subscribe-form">
                            <input type="text" placeholder="Inserisci la tua e-mail">
                            <button type="button">Iscriviti</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
    </footer>
    <!-- Footer fine -->
   
   

   
</body>
</html>