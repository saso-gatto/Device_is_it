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
		
		<!--  <script>
			$(document).ready(function(){
				$('[data-toggle="tooltip"]').tooltip();
			});
		</script>-->
		
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
		                            	<form id="formSetProfilo" method="post" action="setProfilo">
							           		<input type="hidden" id="email" name="email" value="${utente.email}">
							           		<button type="submit" id="btnModificaProfilo" title="Modifica" class="btn btn-link"><i class="material-icons">&#xE254;</i></button>
							   			          	
							       		</form>
		                                <button type="submit" id="btnEliminaProfilo" title="Elimina" class="btn btn-link" data-id-utente="${utente.email}" data-toggle="modal" data-target="#confermaEliminazione"><i class="material-icons">&#xE872;</i></button>
		                            </td>
		                        </tr>
							   	
					  </c:forEach>
        
                    </tbody>
                </table>
                
            </div>
        </div> 
        
        <div class="modal fade" id="confermaEliminazione">
	    <div class="modal-dialog">
	      <div class="modal-content">
	             
	        <!-- Modal body -->
	        <div class="modal-body">
	
				<div class="myform form ">
					<div class="logo mb-3">
						 <div class="col-md-12 text-center">
							<button type="button" class="close" data-dismiss="modal">�</button>
							 <br> <br>
							<h3 class="titolo-loginForm">Desideri eliminare l'utente selezionato?</h3>
							 <br>
						 </div>
					</div>
	                  <div class="row" style="padding: 10px 10px 10px">
		                  <div class="col" >
			                 <button type="button" class="btn btn-block btn-outline-info" data-dismiss="modal" data-target="#confermaEliminazione" > No</button>							 							     
						   </div>
						   <div class="col">
						     <form id="formDeleteUser" method="post" action="deleteUser">
			                     <input type="hidden" name="email" value=""/>			                       
			                     <button type="submit" class=" btn btn-block btn-outline-danger" style="float:right"> Si</button> 
			                 </form>
			               </div>	
					   </div>   	               
				   </div>
			   </div>
		   </div>
	     </div>
	 </div>       
	
	</body>
	
	<jsp:include page="./footer.jsp" />
	
</html>