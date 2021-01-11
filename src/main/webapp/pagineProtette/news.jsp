<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  
  <title>Device is it</title>


    <link rel="stylesheet" href="css/news.css" type="text/css"/>
    <jsp:include page="./navbar.jsp" /> 

</head>
<body>
  
   <p id="titolo" style="text-align:center"> News </p>
  
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
                		<form id="formArticolo" method="post" action="Contenuto" align="right">
							<input type="hidden" id="id" name="id" value=${contenuto.id}>
					<button class="btn btn-outline-success btn-sm" type="submit">Continua a leggere</button>
                </div>
          </div>  
          </c:forEach>
          
          <!-- MIA PARTE DA FINIRE (listaContenuti...tutti al plurale)-->
          
          <c:forEach var="articolo" items="${listaArticoli}"> 
	          <div class="card">
				  <h5 class="card-header">${articolo.titolo}</h5>
				  <div class="card-body">
				    <p class="card-text"><i class="fas fa-calendar-alt"></i>${articolo.anteprima}</p>
				    <a href="#" class="btn btn-primary">Continua a leggere</a>
				  </div>
			  </div>  
     	</c:forEach>
       
     
        </div>
      </div>
   </section>
    
 
</body>
</html>