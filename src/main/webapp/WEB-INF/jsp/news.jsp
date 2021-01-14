<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  
  	<title>Device is it</title>
  	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet"> <!--  icone cancella e modifica contenuto -->
    <link rel="stylesheet" href="css/news.css" type="text/css"/>
    <jsp:include page="./navbar.jsp" /> 

</head>
<body>
  
   <p id="titolo" style="text-align:center"> News </p>
  
  <section id="schede" style="margin-bottom: 50px">   
        
    <div class="container">
        <div class="card-columns">      
          <c:forEach var="contenuto" items="${listaContenuto}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->
            <div class="card">
            	<c:if test="${usernameLogged == 'admin@admin.it'}">  <!--  se è loggato l'admin -->
	  			  <div id="icons" style="padding: 10px 10px 10px">				          
	                <button type="button" class="btn btn-sm btn-outline-danger"><i class="icon-trash"></i> Cancella</button>
			     	<button type="button" class="btn btn-sm btn-outline-info" style="float:right"><i class="icon-cog"></i> Modifica</button> 				 
	              </div>			        
  		        </c:if>
                  <img class="card-img-top" src="${contenuto.img}" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">${contenuto.titolo}</h5>
                    <p class="card-text">${contenuto.anteprima}</p>
                    <p class="card-text"><i class="fas fa-calendar-alt"></i> ${contenuto.data}</p>
                  		<form id="formArticolo" method="post" action="Contenuto" align="right">
		                    <input type="hidden" id="id" name="id" value="${contenuto.id}">                 
		                    <button class="btn btn-outline-success btn-sm" type="submit">Continua a leggere</button>
				        </form>
		        </div>
    
            </div>  
          </c:forEach>
  
       </div>
      </div>
   </section>
</body>
	<jsp:include page="./footer.jsp" /> 
</html>