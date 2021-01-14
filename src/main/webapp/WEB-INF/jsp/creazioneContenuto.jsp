<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <title>Device Is It</title>
  	
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet"> <!--  icone cancella e modifica contenuto -->
  	<link rel="stylesheet" href="css/creazioneContenuto.css" type="text/css"/>
	<jsp:include page="./navbar.jsp" />
  		
</head>
<body>
<p id="titolo" style="align:center"> ${contenuto} </p>
</body>
	 <jsp:include page="./footer.jsp" />
</html>