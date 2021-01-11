<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Device is it</title>

  	<link rel="stylesheet" href="css/specs.css" type="text/css"/>
  	<jsp:include page="./navbar.jsp" /> 
  	
</head>
<body>
   
   <p id="titolo" style="text-align:center"> Schede Tecniche</p>
	
	<section id="schede"> 	
	 	<div class="container">
	 	<div class="row justify-content-center">   
			  
<!-- 			  <div class="col-md-4 col-lg-3"> -->
<!-- 			    <div class="card">     -->
<!-- 			       <div class="img-hover-zoom img-hover-zoom--basic"> -->
<!-- 			          <img src="images/zenbook14.jpg" > -->
<!-- 			       </div> -->
<!-- 			       <div class="card-body text-center"> -->
<!-- 			          <h5 class="card-title">Asus Zenbook 14</h5> -->
<!-- 			          <a href="#" class="btn btn-info">Vai alla scheda tecnica</a> -->
<!-- 			      </div>       -->
<!-- 			    </div> -->
<!-- 			  </div>	 -->
			
		
	   <c:forEach var="device" items="${listaDevice}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->

		   <div class="col-md-4 col-lg-3">
				    <div class="card">    
				       <div class="img-hover-zoom img-hover-zoom--basic">
				          <img src="${device.img}"> 
				       </div>
				       <div class="card-body text-center">
				          <h5 class="card-title">${device.modello}</h5> 
				          <form id="formSchedaTecnica" method="post" action="/schedaTecnica">
				          	<input type="hidden" id="idDevice" name="idDevice" value=${device.idDevice}>			          	
	                        <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Vai alla scheda tecnica</button>
	                       </form>			      	
				      </div>      
				    </div>
		   </div>	
		   
		   </c:forEach>
		
		</div>
	  </div>
    </section>
    
</body>
</html>