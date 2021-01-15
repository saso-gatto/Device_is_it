<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>Device Is It</title>
  	
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet"> <!--  icone cancella e modifica contenuto -->
  	<link rel="stylesheet" href="css/creaContenuto.css" type="text/css"/>
	<jsp:include page="./navbar.jsp" />
  		
</head>
<body>
  <p id="titolo" style="align:center"> ${contenuto} </p>
   
   <c:if test="${contenuto == 'Nuova Recensione Smartphone' || contenuto == 'Nuova Recensione Computer' || contenuto == 'Nuovo Articolo' }">  
	   	   	
	  <div class="container">
	  <form action="/action_page.php">
	    <div class="row">
	      <div class="col-20">
	        <label for="fname">Titolo</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="titoloRec" name="titoloRec" placeholder="inserisci titolo" required>
	      </div>
	    </div>
	    <div class="row">
	      <div class="col-20">
	        <label for="lname">Immagine</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="img" name="img" placeholder="url immagine" required>
	      </div>
	    </div>
	    
	    <div class="row">
	      <div class="col-20">
	        <label for="country">Device</label>
	      </div>
	     
	      <div class="col-80">	      
	       <c:if test="${contenuto == 'Nuova Recensione Smartphone'}">  
		   	   	<input type="text" id="tipoDevice" name="tipoDevice" value="Smartphone"  disabled="disabled">
	  	   		
	  	   </c:if>
	  	   
	  	   <c:if test="${contenuto == 'Nuova Recensione Computer'}">  
	  	   		 <input type="text" id="tipoDevice" name="tipoDevice" value="Computer"  disabled="disabled">	   	   	     
	  	   </c:if>
	  	   <c:if test="${contenuto == 'Nuovo Articolo' }">  
<!-- 	  	   		<select id="device" name="device"> -->
<!-- 		          <option value="0">Non specificato</option> -->
<!-- 		          <option value="1">Smartphone</option> -->
<!-- 		          <option value="2">Computer</option>		           -->
<!-- 		        </select> -->
				<input type="text" id="deviceDaAggiungere" name="deviceDaAggiungere">
				
	  	   </c:if>
	  	   
	      </div>
	    </div>
	    
	   	<div class="row">
		      <div class="col-20">
		       		<label for="lname">Tipologia Contenuto</label>
		      </div>
		      <div class="col-80">
		    		<c:if test="${contenuto == 'Nuova Recensione Smartphone' || contenuto == 'Nuova Recensione Computer'}">  
		  	   			 <input type="number" id="tipoContenuto" name="tipoContenuto" value="2"  disabled="disabled">	   	   	     
		    		</c:if>
		    	
		    		<c:if test="${contenuto == 'Nuovo Articolo'}">  
		  	   		 	<input type="number" id="tipoContenuto" name="tipoContenuto" value="1"  disabled="disabled">	   	   	     
		    		</c:if>
		    </div>
	    </div>
	   
	    
	    <div class="row">
	      <div class="col-20">
	        <label for="subject">Anteprima</label>
	      </div>
	      <div class="col-80">
	        <textarea id="anteprima" name="anteprima" placeholder="inserisci anteprima" style="height:100px" required></textarea>
	      </div>
	    </div>
	    <div class="row">
	      <div class="col-20">
	        <label for="subject">Testo</label>
	      </div>
	      <div class="col-80">
	        <textarea id="testo" name="testo" placeholder="inserisci testo" style="height:400px" required></textarea>
	      </div>
	    </div>
	    <div class="row" >
	       <br>
		   <div class="col-12">
<!-- 		      <input id="btnPubblicaContenuto" type="submit" value="Pubblica" href="AggiungiContenuto"> -->
					<button type="button" id="btnPubblicaContenuto" class="btn btn btn-outline-warning">Aggiungi contenuto</button>
					
		   </div>
	    </div>
	  </form>
	 </div>
   </c:if>
  
  <c:if test="${contenuto == 'Nuova Scheda Tecnica Smartphone' || contenuto == 'Nuova Scheda Tecnica Computer' }">  
  	 <div class="container">
	  <form action="/action_page.php">
	    <div class="row">
	      <div class="col-20">
	        <label for="fname">Modello</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="modello" name="modello" placeholder="inserici modello" required>
	      </div>
	    </div>
        <div class="row">
	      <div class="col-20">
	        <label for="fname">Marca</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="marca" name="marca" placeholder="inserici marca" required>
	      </div>
	    </div>
	    <div class="row">
	      <div class="col-20">
	        <label for="country">Device</label>
	      </div>
	      <div class="col-80">
	      
	       <c:if test="${contenuto == 'Nuova Scheda Tecnica Smartphone'}">  
<!-- 		   	   	<input type="text" id="tipoDevice" name="tipoDevice" value="Smartphone"  disabled="disabled"> -->
				<input type="numeric" id="deviceDaAggiungere" name="deviceDaAggiungere">
					
	  	   </c:if>
	  	   
	  	   <c:if test="${contenuto == 'Nuova Scheda Tecnica Computer'}">  
<!-- 	  	   		 <input type="text" id="tipoDevice" name="tipoDevice" value="Computer"  disabled="disabled">	   	   	      -->
				<input type="numeric" id="deviceDaAggiungere" name="deviceDaAggiungere">
				
	  	   </c:if>	  	  	  	
	      </div>
	    </div>
        <div class="row">
	      <div class="col-20">
	        <label for="fname">Memoria</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="memoria" name="memoria" placeholder="inserici memoria" required>
	      </div>
	    </div>
        <div class="row">
	      <div class="col-20">
	        <label for="fname">Ram</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="ram" name="ram" placeholder="inserici ram" required>
	      </div>
	    </div>
        <div class="row">
	      <div class="col-20">
	        <label for="fname">Display</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="display" name="display" placeholder="inserici display" required>
	      </div>
	    </div>
        <div class="row">
	      <div class="col-20">
	        <label for="fname">Batteria</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="batteria" name="batteria" placeholder="inserici batteria" required>
	      </div>
	    </div>
        <div class="row">
	      <div class="col-20">
	        <label for="subject">Fotocamera</label>
	      </div>
	      <div class="col-80">
	        <textarea id="fotocamera" name="fotocamera" placeholder="inserisci fotocamera" style="height:50px" required></textarea>
	      </div>
	    </div>
        <div class="row">
	      <div class="col-20">
	        <label for="subject">CPU</label>
	      </div>
	      <div class="col-80">
	        <textarea id="cpu" name="cpu" placeholder="inserisci cpu" style="height:50px" required></textarea>
	      </div>
	    </div>
        <div class="row">
	      <div class="col-20">
	        <label for="fname">Peso</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="peso" name="peso" placeholder="inserisci peso" required>
	      </div>
	    </div>
        <div class="row">
	      <div class="col-20">
	        <label for="fname">OS</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="os" name="os" placeholder="inserisci os" required>
	      </div>
	    </div>
        <div class="row">
	      <div class="col-20">
	        <label for="fname">Immagine</label>
	      </div>
	      <div class="col-80">
	        <input type="text" id="img" name="img" placeholder="inserisci url immagine" required>
	      </div>
	    </div>
	    <div class="row" >
	       <br>
		   <div class="col-12">
		      <input id="btnPubblicaSchedaTecnica" type="submit" value="Pubblica" href="AggiungiContenuto">
		   </div>
	    </div>
	  </form>
	 </div>
  </c:if>
  


</body>
	 <jsp:include page="./footer.jsp" />
	 <script src="./js/creaContenuto.js"></script>
</html>