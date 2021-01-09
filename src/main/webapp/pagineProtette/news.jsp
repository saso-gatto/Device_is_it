<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Device is it</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">  	
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  	
  	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">  <!-- font-family: 'Kaushan Script', cursive; -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> <!-- icone bootstrap -->
  	<link rel="stylesheet" href="css/specs.css" type="text/css"/>
  	<link rel="stylesheet" href="css/home.css" type="text/css"/>
  	
  	  <script src="https://code.jquery.com/jquery-3.5.0.js"></script> 	<!-- Codice per includere la navbar -->
    <script> 
    $(function(){
        $("#Navbar").load("pagineProtette/navbar.jsp #daCaricare");
        $.getScript("/js/login.js");
      });
    </script> 
  	
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