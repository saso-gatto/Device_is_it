<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Device is it</title>

	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet"> <!--  icone cancella e modifica contenuto -->
  	<link rel="stylesheet" href="css/specs.css" type="text/css"/>
  	<jsp:include page="./navbar.jsp" /> 
  	
</head>
<body>
  

   	<p id="titolo" style="text-align:center"> Schede Tecniche</p>
   		
	<section id="schede"> 	
	 <div class="container">
	 	<div class="row justify-content-center">   
			 	
		   <c:forEach var="device" items="${listaDevice}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->
			   <div class="col-md-4 col-lg-3">
				    
				    <c:if test="${usernameLogged == 'admin@admin.it'}">   <!--  se � loggato l'admin -->
					    <a href="#" class="nav-link dropdown-toggle" style="padding: 0px" data-toggle="dropdown"><i class="icon-cog"></i></a>
	                    <div class="dropdown-menu">
	                        <a href="#" class="dropdown-item"> <i class="icon-fixed-width icon-pencil"></i> Modifica</a>
	                        <a href="#" class="dropdown-item"> <i class="icon-fixed-width icon-trash"></i> Cancella</a>                      
	                    </div>
                    </c:if>
	                    
	                    <div class="card" style="border-radius:30px">    
				       <div class="img-hover-zoom img-hover-zoom--basic">
				          <img src="${device.img}"> 
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

</body>
	<jsp:include page="./footer.jsp" />
</html>