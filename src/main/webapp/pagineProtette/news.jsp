<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	
	<title>Device is it</title>

  	<link rel="stylesheet" href="css/specs.css" type="text/css"/>
  	<link rel="stylesheet" href="css/news.css" type="text/css"/>
  	<jsp:include page="./navbar.jsp" /> 

</head>
<body>
	
   <p id="titolo" style="text-align:center"> News </p>
	
	<section id="schede"> 	
	 		 	
	 	<div class="row justify-content-center">   		
		
		   <c:forEach var="contenuto" items="${listaContenuto}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->
			   			  
			   <div class="col-lg-4 col-md-4">
			    <div class="card">
                    <div class="single-latest-blog">
                        <img src="${contenuto.img}">
                        <div class="latest-text">
                            <div class="tag-list">
                                <div class="tag-item">
                                    <i class="fa fa-calendar-o"></i>
                                    ${contenuto.data}
                                </div>
                                <div class="tag-item">
                                    <i class="fa fa-comment-o"></i>
                                    5
                                </div>
                            </div>                            	
                        		<form id="formArticolo" method="post" action="Contenuto">
	                         		<input type="hidden" id="id" name="id" value=${contenuto.id}>			          	
	                         		<button type="submit">${contenuto.titolo}</button>
                        		</form>
                            <p>${contenuto.anteprima} </p>
                        </div>
                    </div>
                </div>
			   </div>
			   
			   		   
		   </c:forEach>
		
		
	  </div>
    </section>
    
</body>
</html>