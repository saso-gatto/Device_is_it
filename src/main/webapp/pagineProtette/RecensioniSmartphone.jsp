<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

  	<link rel="stylesheet" href="css/recensioni.css" type="text/css"/>
  	
	<title>Scheda Tecnica</title>
	<jsp:include page="./navbar.jsp" /> 
	
</head>
<body>

	<p id="titolo" style="text-align:center"> Recensioni Smartphone</p>

 <div>
 
 
  <div class="card">
    <div class="additional">
      
      <div class="user-card">
        <div class="level center">
          13 commenti
        </div>
        <div class="points center">
          Data: 1/1/2020
        </div>
      </div>

      <div class="more-info">
        <h1>Jane Doe</h1>
          <div class="coords">
            <span>Group Name</span>
            <span>Joined January 2019</span>
          </div>
          <div class="coords">
            <span>Position/Role</span>
            <span>City, Country</span>
          </div>
      </div>
      
    </div>
    
    <div class="general">
      <h1>Pixel 5</h1>
      <p>Google ha rinnovato la sua lineup di smartphone anche nel 2020 e fra questi c’è anche la sua punta di diamante, ovvero Google Pixel 5. È un prodotto atipico, con vari passi indietro, soprattutto in termini di posizionamento e che è ancora più atipico per noi italiani visto che non viene venduto nel nostro paese. Scopriamo cosa ha di speciale questo nuovo smartphone di Google.</p>
      <span class="more">Mouse over the card for more info</span>
    </div>
    
  </div>




	  <div class="card">
    <div class="additional">
      <div class="user-card">
        <div class="level center">
          13 commenti
        </div>
        <div class="points center">
          Data: 1/1/2020
        </div>
      </div>

      <div class="more-info">
        <h1>Jane Doe</h1>
          <div class="coords">
            <span>Group Name</span>
            <span>Joined January 2019</span>
          </div>
          <div class="coords">
            <span>Position/Role</span>
            <span>City, Country</span>
          </div>
        
      </div>
    </div>
    

    <div class="general">
      <h1>Jane Doe</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce a volutpat mauris, at molestie lacus. Nam vestibulum sodales odio ut pulvinar.</p>
      <span class="more">Mouse over the card for more info</span>
    </div>
  </div>
  

	</div>


 
  
</body>
	<jsp:include page="./footer.jsp" />
</html>