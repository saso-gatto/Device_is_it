<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Device Is It</title>
  	
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet"> <!--  icone cancella e modifica contenuto -->
  	<link rel="stylesheet" href="css/Contenuto&Device.css" type="text/css"/>
	<jsp:include page="./navbar.jsp" />
  		
</head>
<body>
  

  	  <p id="titolo" style="align:center"> ${titoloContenuto} </p>
  	  <input type="hidden" id="tipoContenuto" name="tipoContenuto" value="${tipoContenuto}">	
  	  <input type="hidden" id="idContenuto" name="idContenuto" value="${contenuto.id}">
	 
	 <div class="container">
	  <form action="/action_page.php" id="formSetContenuto">
	    <div class="row">
	      <div class="col-20">
	        <label for="fname">Titolo</label>
	      </div>
	      <div class="col-80">	   
			  <input type="text" id="titoloRec" name="titoloRec" value="${contenuto.titolo}" required>
	      </div>
	    </div>
	    <div class="row">
	      <div class="col-20">
	        <label for="lname">Immagine</label>
	      </div>
	      <div class="col-80">
			  <input type="text" id="img" name="img" value="${contenuto.img}" required>
	      </div>
	    </div>

	   	<div class="row">
	      <div class="col-20">			      
	         <label for="lname">Codice Device</label>
	      </div>		  	 	
	      <div class="col-80">
	      	<c:if test="${contenuto.device == 0}">
	      		<input type="text" id="idDevice" name="idDevice" placeholder="nessun device associato">
	      	</c:if>		 
	      	<c:if test="${contenuto.device != 0}">
	      		<input type="text" id="idDevice" name="idDevice" value="${contenuto.device}" required>
	      	</c:if>	   
	      </div>
	      </div>				    
	    	    		    	      	           	 
	    <div class="row">
	      <div class="col-20">
	        <label for="subject">Anteprima</label>
	      </div>
	      <div class="col-80">	         			      	 
			  	  <textarea id="anteprima" name="anteprima" style="height:100px" required>${contenuto.anteprima}</textarea>					  
	      </div>
	    </div>

	    <div class="row">
	      <div class="col-20">
	        <label for="subject">Testo</label>
	      </div>
	      <div class="col-80">	         			      	 
			 <textarea id="testo" name="testo" style="height:400px" required>${contenuto.testo}</textarea>						  
	      </div>
	    </div>
    
	    <div class="row" >
	       <br>
		   <div class="col-12">			   		
			  <button type="submit" id="btnModificaContenuto" class="btn btn-outline-btn btn btn-success">Modifica</button>
		   </div>
       </div>
       
	  </form>
	 </div>


</body>
	 <jsp:include page="./footer.jsp" />
	 <script src="./js/modificaContenuto.js"></script>	 
</html>