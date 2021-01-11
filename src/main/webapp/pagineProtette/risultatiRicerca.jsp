<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Device Is It</title>	
  	<link rel="stylesheet" href="css/ricerca.css" type="text/css"/>
	<jsp:include page="./navbar.jsp" />
  		
</head>
<body>
   <p id="titolo" style="text-align:left"> Risultati di Ricerca: </p>
   
   <section id="schede">   
        
    <div class="container">
        <div class="card-columns">      
    
       <c:forEach var="contenuto" items="${listaContenuto}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->
        
            <div class="card">
                  <img class="card-img-top" src="${contenuto.img}" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">${contenuto.titolo}</h5>
                    <p class="card-text">
                      ${contenuto.anteprima}
                     </p>
                    <p class="card-text"><i class="fas fa-calendar-alt"></i>${contenuto.data}</p>
                </div>
		                <form id="formArticolo" method="post" action="Contenuto">
		                              <input type="hidden" id="id" name="id" value=${contenuto.id}>                 
		                              <button type="submit">Continua a leggere</button>
		                </form>
          </div> 
          
          <div class="card">
  <h5 class="card-header">Featured</h5>
  <div class="card-body">
    <h5 class="card-title">Special title treatment</h5>
    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div> 
              
     
       </c:forEach>
     
        </div>
      </div>
   </section>
</body>
</html>