<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Device Is It</title>
  	
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet"> <!--  icone cancella e modifica contenuto -->
  	<link rel="stylesheet" href="css/Contenuto&Device.css" type="text/css"/>  <!-- verificare se va bene -->
	<jsp:include page="./navbar.jsp" />
  		
</head>
<body>
  

  	  <p id="titolo" style="align:center"> Modifica dati utente </p>
  	  <input type="hidden" id="idUtente" name="idUtente" value="${utente.email}">	

	 
	 <div class="container">
	  <form action="/action_page.php" id="formSetProfilo">
	    <div class="row">
	      <div class="col-20">
	        <label for="fname">Email</label>
	      </div>
	      <div class="col-80">	   
			  <input type="text" id="emailUtente" name="email " value="${utente.email}" required>
	      </div>
	    </div>
	    <div class="row">
	      <div class="col-20">
	        <label for="fname">Nome</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="nomeUtente" name="nome" value="${utente.nome}" required>	       
	      </div>
	    </div>

	   	<div class="row">
	      <div class="col-20">
	        <label for="fname">Cognome</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="cognomeUtente" name="cognome" value="${utente.cognome}" required>	       
	      </div>
	    </div>				    
	    	    		    	      	           	 
	    <div class="row">
	      <div class="col-20">
	        <label for="fname">Username</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="username" name="username" value="${utente.username}" required>	       
	      </div>
	    </div>

	    <div class="row">
	      <div class="col-20">
	        <label for="fname">Password</label>
	      </div>
	      <div class="col-80">
	        <input type="password" id="password" name="password" value="${utente.password}" required>	       
	      </div>
	    </div>
	    
	    <div class="row">
	      <div class="col-20">
	        <label for="fname">Newsletter</label>
	      </div>
	      <div class="col-80">
	        <c:if test="${utente.newsletter == true}">
			     <input type="text" id="newsletterUtente" name="newsletter" value="attivata" required>
			</c:if>
	        <c:if test="${utente.newsletter != true}">
			     <input type="text" id="newsletterUtente" name="newsletter" value="disattivata" required>
			</c:if>	       
	      </div>
	    </div>
	    
    
	    <div class="row" >
	      <br>
		   <div class="col-12 text-center" >			   		  			  
	    		<button type="submit" id="btnModificaProfilo" class="btn btn-outline-btn btn btn-success">Modifica</button>
		  </div>
	   </div>
       
	  </form>
	 </div>


</body>
	 <jsp:include page="./footer.jsp" />
	 <script src="./js/modificaProfilo.js"></script>	 
</html>