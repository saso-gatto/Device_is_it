<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<jsp:include page="./navbar.jsp" />
	<link rel="stylesheet" href="css/Contenuto&Device.css" type="text/css"/>
</head>
<body>

	<p id="titolo" style="align:center"> Profilo </p>
  
  	 <div class="container">
	  
	    
        <div class="row">
	      <div class="col-20">
	        <label for="fname">Email</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="email" name="email" value="${utente.email}" disabled>	       
	      </div>
	    </div>
	    <div class="row">
	      <div class="col-20">
	        <label for="fname">Nome</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="nome" name="nome" value="${utente.nome}" disabled>	       
	      </div>
	    </div>
	    <div class="row">
	      <div class="col-20">
	        <label for="fname">Cognome</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="cognome" name="cognome" value="${utente.cognome}" disabled>	       
	      </div>
	    </div>
	    <div class="row">
	      <div class="col-20">
	        <label for="fname">Username</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="username" name="username" value="${utente.username}" disabled>	       
	      </div>
	    </div>
	    <div class="row">
	      <div class="col-20">
	        <label for="fname">Password</label>
	      </div>
	      <div class="col-80">
	        <input type="password" id="password" name="password" value="${utente.password}" disabled>	       
	      </div>
	    </div>
	    <div class="row">
	      <div class="col-20">
	        <label for="fname">Newsletter</label>
	      </div>
	      <div class="col-80">
	        <c:if test="${utente.newsletter == true}">
			     <input type="text" id="newsletter" name="newsletter" value="attivata" disabled>
			</c:if>
	        <c:if test="${utente.newsletter != true}">
			     <input type="text" id="newsletter" name="newsletter" value="disattivata" disabled>
			</c:if>	       
	      </div>
	    </div>
	    
        <div class="row" >
	      <br>
		   <div class="col-12 text-center" >			   		  			  
		      <form id="formSetProfilo" method="post" action="setProfilo">
           		<input type="hidden" id="email" name="email" value="${usernameLogged}">			          	
	    		<button type="submit" id="btnModificaProfilo" class="btn btn-outline-btn btn btn-success"> Modifica Dati</button>

       		  </form>
			
			<button type="submit" id="btnEliminaProfilo" class="btn btn-outline-btn btn btn-danger">Elimina profilo</button>
			
		  </div> 
	   </div>
        
	 
	 </div>



</body>
	<jsp:include page="./footer.jsp" /> 
</html>