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
	
	<jsp:include page="./navbar.jsp" />
  
    
	  
</head>
<body>


<div id="contenuto" class="container">
    

      <div class="row">

        <div class="col-sm-8 blog-main">

          <div class="blog-post">
            <h2 class="blog-post-title"> ${contenuto.titolo} </h2>
            <p class="blog-post-meta"> ${contenuto.data} </p>
            <p> ${contenuto.testo} </p>
            </div><!-- /.blog-post -->
        </div><!-- /.blog-main -->
        

        <div class="col-sm-3 offset-sm-1 blog-sidebar">
          <div class="sidebar-module sidebar-module-inset">
            <h4>About</h4>
            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
          </div>
          <div class="sidebar-module">
            <h4>Archives</h4>
            <ol class="list-unstyled">
              <li><a href="#">March 2014</a></li>
              <li><a href="#">February 2014</a></li>
              <li><a href="#">January 2014</a></li>
              <li><a href="#">December 2013</a></li>
              <li><a href="#">November 2013</a></li>
              <li><a href="#">October 2013</a></li>
              <li><a href="#">September 2013</a></li>
              <li><a href="#">August 2013</a></li>
              <li><a href="#">July 2013</a></li>
              <li><a href="#">June 2013</a></li>
              <li><a href="#">May 2013</a></li>
              <li><a href="#">April 2013</a></li>
            </ol>
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
			                <div class="comment mt-4 text-justify float-left"> 
			                    <h4>${commento.utente}</h4> <span>-${commento.data}</span> <br>
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
							<label for="username" id="username">Username: ${username}</label>
						</div>
						<p id="idContenuto"> ${contenuto.id} </p>
						
						<div class="form-group">
							<label for="commento">Commento</label> 
							<textarea id="testoCommento" name="areaDiTesto" rows="5" cols="30"> 	</textarea>
							<button type="button" id="submitCommento" href="AggiungiCommento">Invia commento </button>
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




</div> 
</body>
<script src="/js/commento.js"></script>  	
</html>