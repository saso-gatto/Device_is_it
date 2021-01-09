<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

  	<link rel="stylesheet" href="css/specs.css" type="text/css"/>
  	
	<title>Scheda Tecnica</title>
	<jsp:include page="./navbar.jsp" /> 
	
</head>
<body>

  
	<div class="container">
	
	<div class="table-users">
   <div class="header">Scheda Tecnica</div>
   
   <table cellspacing="0">
   

	    
	      <tr>
	      	<th>Modello</th>
	      	<th>${device.modello}</th>
	      </tr>
	      
	      <tr>
	      	<th>Marca</th>
	      	<th>${device.marca}</th>
	      </tr>
	      
	      <tr>
	      	<th>Memoria</th>
	      	<th>${device.memoria}</th>
	      </tr>
	      
	      <tr>
	      	<th>Ram</th>
	      	<th>${device.ram}</th>
	      </tr>
	      
	      <tr>
	      	<th>Display</th>
	      	<th>${device.display}</th>
	      </tr>
	      
	      <tr>
	      	<th>Batteria</th>
	      	<th>${device.batteria}</th>
	      </tr>
	      
	      <tr>
	      	<th>Fotocamera</th>
	      	<th>${device.fotocamera}</th>
	      </tr>
	      
	      <tr>
	      	<th>cpu</th>
	      	<th>cpu</th>
	      </tr>
	      
	      <tr>
	      	<th>Peso</th>
	      	<th>${device.peso}</th>
	      </tr>
	      
	      <tr>
	      	<th>OS</th>
	      	<th>${device.os}</th>
	      </tr>
	      
	    </tbody>
	  </table>
	</div>



</body>
</html>