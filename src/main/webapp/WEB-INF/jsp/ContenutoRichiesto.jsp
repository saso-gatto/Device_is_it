<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Device Is It</title>	
  	<link rel="stylesheet" href="css/commento.css" type="text/css"/>
	<link rel="stylesheet" href="css/blog.css" type="text/css"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
	
	<jsp:include page="./navbar.jsp" />
  
    
	
</head>
<body>

      <div class="container">
       <div class="row" style="padding-top: 50px">
        <div class="col-9 " style="background-color: white; border-radius:30px;">

          <div class="blog-post">
          <p id="titolo" style="text-align: left; margin-bottom: 0px; padding-top: 10px "> ${contenuto.titolo}</p>           
            <p class="blog-post-meta"> ${contenuto.data} </p>
            <p> ${contenuto.testo} </p>
            </div><!-- /.blog-post -->
        </div><!-- /.blog-main -->
        

        <div class="col-3" style="padding-left: 50px">
			
          <div class="sidebar-module sidebar-module-inset">        
            <h4>Video Correlati</h4>
	            <section id="video">
<!-- 					<iframe width="350" height="200" src="https://www.youtube.com/embed/6n1If16xzXo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe> -->
				
						<form class="input-group mb-3" id="form">
				          <div class="input-group mb-3" >
						   <input type="text" class="form-control" id="search" value="${contenuto.titolo}">
						    <div class="input-group-append">
						      <button class="btn btn-success" type="submit">cerca</button>  
						     </div>
						  </div>
				        </form>
				                 
				        <div class="row">
				          <div class="col-12">
				             <div id="videos">				              
				             </div>  
				          </div>
				        </div>			
				</section>
          </div>
          <div class="sidebar-module">
            <h4>Collegamenti</h4>
            <ol class="list-unstyled">
              <li><a href="#">Recensioni</a></li>
              <li><a href="#">News</a></li>
              <li><a href="#">Schede Tecniche</a></li>
            </ol>
          </div>
        </div>
      </div>
	</div>

   






	  
<!-- Main Body -->
<section>
    <div class="container" id="commenti">
        <div class="row">
        	<div class="col-sm-5 col-md-6 col-12 pb-4">
		    	<h3>Commenti</h3>
					<c:forEach var="commento" items="${listaCommenti}">
			                <div class="comment col-12 mt-4 text-justify float-left"> 
			                    <h4>${commento.utente} </h4> <span>${commento.data}</span> <br>
			                    <p>${commento.testo}</p>
			                </div>
			  		</c:forEach>			     
	         </div>
            
            
            <div class="col-lg-4 col-md-5 col-sm-4 offset-md-1 offset-sm-1 col-12 mt-4">
            	<c:if test="${usernameLogged == null}">  <!--  se non c'è un username loggato mostrami il login -->
	                    <div>
	                        <h4>Effettua il login per lasciare un commento!</h4>
<!-- 		                         <label for="message">Messaggio</label> -->
<!-- 		                         <textarea name="msg" id="testCommento" msg cols="30" rows="5" class="form-control"></textarea> -->
	                    </div>                                                         
<!-- 	                    <div class="form-group"> <button type="button" id="submitCommento" href="AggiungiCommento" class="btn">Posta il Commento</button> </div> -->
	             </c:if>
	             
	             <c:if test="${usernameLogged != null}">
	             	<form id="formCommento">
						<div class="form-group">
							<label for="username" id="username">${username}</label>
						</div>
						<input type="hidden" id="idContenuto" value="${contenuto.id}">	
						<input type="hidden" id="emailUtente" value="${usernameLogged}">	
						
						<div class="form-group">
							<textarea id="testoCommento" name="areaDiTesto" rows="5" cols="30">Scrivi qui il tuo commento...</textarea>										
							<button type="button" id="submitCommento" class="btn btn btn-outline-warning">Invia commento</button>
						</div>
						
<!-- 						<div class="form-group"> -->
<!-- 							<label for="nome">Nome:</label>  -->
<!-- 							<input type="text" class="form-control" placeholder="Insert name" id="nome" /> -->
<!-- 						</div> -->
						
						
<!-- 						<div class="form-group"> -->
<!-- 							<label for="school">Id Scuola:</label> <input type="text" -->
<!-- 								class="form-control" placeholder="Enter School id" id="school"> -->
<!-- 						</div> -->
			
	             	</form>
	             </c:if>
	             
            </div>
        </div>
    </div>
</section>

		



</body>
<jsp:include page="./footer.jsp" />
<script src="/js/commento.js"></script>  
<script src="/js/api.js"></script>  
</html>