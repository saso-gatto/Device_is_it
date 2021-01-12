<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Device Is It</title>	
  	<link rel="stylesheet" href="css/commento.css" type="text/css"/>
  	<link rel="stylesheet" href="css/contenutoRichiesto.css" type="text/css"/>
	<jsp:include page="./navbar.jsp" />

	<script src="/js/commento.js"></script>  	
	  
</head>
<body>
<div id="contenuto" class="container">
	  <h1>${contenuto.titolo}</h1>
	  <p>${contenuto.testo}</p>


    <div class="end">
        <div class="collapse navbar-collapse" id="navbarColor02">
            <ul class="navbar-nav">
                <li class="nav-item"> <a class="nav-link" href="#" data-abc="true">Work</a> </li>
                <li class="nav-item"> <a class="nav-link" href="#" data-abc="true">Capabilities</a> </li>
                <li class="nav-item "> <a class="nav-link" href="#" data-abc="true">Articles</a> </li>
                <li class="nav-item active"> <a class="nav-link mt-2" href="#" data-abc="true" id="clicked">Contact<span class="sr-only">(current)</span></a> </li>
            </ul>
        </div>
    </div>

<!-- Main Body -->
<section>
    <div class="container" id="commenti">
        <div class="row">
        	<div class="col-sm-5 col-md-6 col-12 pb-4">
		    	<h3>Commenti</h3>
					<c:forEach var="commento" items="${listaCommenti}">
			                <div class="comment mt-4 text-justify float-left"> 
			                    <h4>${commento.utente}</h4> <span>-${commento.data}</span> <br>
			                    <p>${commento.testo}</p>
			                </div>
			  		</c:forEach>              
<!-- 			                <div class="text-justify darker mt-4 float-right">  -->
<!-- 			                    <h4>Rob Simpson</h4> <span>- 20 October, 2018</span> <br> -->
<!-- 			                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Accusamus numquam assumenda hic aliquam vero sequi velit molestias doloremque molestiae dicta?</p> -->
<!-- 			                </div> -->
			                
			     
	         </div>
            
            
            <div class="col-lg-4 col-md-5 col-sm-4 offset-md-1 offset-sm-1 col-12 mt-4">
                <form id="algin-form">
                    <div class="form-group">
                        <h4>Lascia un commento</h4> <label for="message">Messaggio</label> <textarea name="msg" id="" msg cols="30" rows="5" class="form-control"></textarea>
                    </div>                                                         
                    <div class="form-group"> <button type="button" id="post" class="btn">Posta il Commento</button> </div>
                </form>
            </div>
        </div>
    </div>
</section>


</div> 
</body>
</html>