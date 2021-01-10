<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	
	<title>Device is it</title>
  	
  	<jsp:include page="./navbar.jsp" /> 

</head>
<body>
	
	<div id="Navbar"></div>
    
   
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
                            <a href="#">
                                <h4>${contenuto.titolo}</h4>
                            </a>
                            <p>${contenuto.testo} </p>
                        </div>
                    </div>
                </div>
			   </div>
			   
			   		   
		   </c:forEach>
		
		
	  </div>
    </section>
    
</body>
</html>