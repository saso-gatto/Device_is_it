<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<jsp:include page="./navbar.jsp" />
		
		<title>Device Is It</title>
		
	  	<link rel="stylesheet" href="css/listaUtenti.css" type="text/css"/>
	  	
	  	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
	</head>
	
	<body>
	
		<p id="titolo" style="text-align:center"> Lista Utenti </p>
	
        <div class="table-responsive">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                    	<div class="col-sm-8"><h2 id="titolo">        </h2></div>
                        <div class="col-sm-4">
                            <div class="search-box">
                                <i class="material-icons">&#xE8B6;</i>
                                <input type="text" class="form-control" placeholder="Search&hellip;">
                            </div>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover table-bordered">
                    <thead>
                        <tr >
                            <th>#</th>
                            <th>Email <i class="fa fa-sort"></i></th>
                            <th>Nome</th>
                            <th>Cognome <i class="fa fa-sort"></i></th>
			    			<th>Username <i class="fa fa-sort"></i></th>
                            <th>Password</th>
                            <th>Newsletter <i class="fa fa-sort"></i></th>
                            <th>Bloccato</th>
			    			<th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
					<c:forEach var="utente" items="${tuttiUtenti}"> <!-- stesso nome che abbiamo passato al model nella classe DeviceController rigo  23 -->
					                    
						<tr>
		                            <td>*</td>
		                            <td>${utente.email}</td>
		                            <td>${utente.nome}</td>
		                            <td>${utente.cognome}</td>
		                            <td>${utente.username}</td>
		                            <td>-----------------------</td>
					    			<td>${utente.newsletter}</td>
					    			<td>${utente.bloccato}</td>
		                            <td>
		                                <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
		                                <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
		                            </td>
		                        </tr>
							   	
					  </c:forEach>
        
                    </tbody>
                </table>
                
            </div>
        </div>        
	
	</body>
	
	<jsp:include page="./footer.jsp" />
	
</html>