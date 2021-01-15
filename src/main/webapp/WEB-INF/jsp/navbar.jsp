<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<!-- aggiunta icona -->
	<link rel="shortcut icon" href="images/icona.ico" type="image/x-icon" />

	<title>Device is it</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">  	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  	<script src='https://kit.fontawesome.com/a076d05399.js'></script>

  	<link rel="preconnect" href="https://fonts.gstatic.com">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">  <!-- font-family: 'Kaushan Script', cursive; -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> <!-- icone bootstrap -->
  	
  	<link rel="stylesheet" href="css/navbar.css" type="text/css"/>

  	<script src="/js/login.js"></script>  	

</head>
<body>
<!-- NAVBAR -->
	
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">   
        <!-- logo -->
       <a href="index" id="logo">Device Is It</a> 
       
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
           
            <div class="navbar-nav">             
               <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Recensioni</a>
                    <div class="dropdown-menu">
                        <a href="recensioniSmartphone" class="dropdown-item">Smartphone</a>
                        <a href="recensioniPc" class="dropdown-item">Computer</a>                      
                    </div>
                </div> 
                <a href="schedeTecniche" class="nav-item nav-link">Schede Tecniche</a>
                <a href="news" class="nav-item nav-link">News</a>                             
            </div>
            
            <form method="post" action="cerca">
             <div class="mx-auto order-0">	             			 
	   			 <div class="form-inline my-lg-0">
  					<div class="input-group "> 
  						<input class="form-control mr-sm-1" id="daCercare" name="daCercare" type="search" placeholder="Cerca" aria-label="Cerca" required>
      					<div class="input-group-append"> 
      						<button type="submit" class="btn btn-outline-warning">cerca</button>	
      					</div>
    				</div>
   			 	</div>	   			 
   			 </div>    		
   			 </form>	 	 		       		
   			
            <div id="modeAdmin" style="align:center; color:white">
	            <c:if test="${usernameLogged == 'admin@admin.it'}">  <!--  se è loggato l'admin -->
		    			 Modalità Amministratore 
		    	</c:if>
            </div>	
   			
   			<div class="navbar-nav">   	
	
	   			<c:if test="${usernameLogged == null}">  <!--  se non c'è un username loggato mostrami il login -->
	    			<i class="loginIcon fa fa-user-circle" style="font-size:36px"  data-toggle="modal" data-target="#loginForm" ></i>  <!-- icona login  -->   
	    		</c:if>
	    		
	    		<c:if test="${usernameLogged != null}"> <!-- se c'è un username loggato -->

	    			<div class="navbar-nav">             
               			<div class="nav-item dropdown">
		    			<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
							<i class='loginIcon fas fa-house-user' style='font-size:30px'></i>
						</a>
	                    <div class="dropdown-menu">
	                        <a href="profilo" class="dropdown-item">Profilo</a>
	                        <a href="doLogout" class="dropdown-item"> Logout </a>	        
	                    </div>		
	                  </div>
	               </div>
	               
	               
	    		</c:if>   			   			                                                                                         
            </div>
            
            
        </div>
    </nav>
    
    <!-- LOGIN -->
	 <div class="modal fade" id="loginForm">
	    <div class="modal-dialog">
	      <div class="modal-content">
              
	        <!-- Modal body -->
	        <div class="modal-body">
	         	
	         	<div id="first">
					<div class="myform form ">
						 <div class="logo mb-3">
							 <div class="col-md-12 text-center">
								<button type="button" class="close" data-dismiss="modal">×</button>
								<h1 class="titolo-loginForm">Login</h1>
							 </div>
						</div>
	                   <form method="post" action="login">            
	                           <div class="form-group ">
	                              <label for="exampleInputEmail1">Email</label>
	                              <input type="email" name="email"  class="form-control"  id="email" aria-describedby="emailHelp" placeholder="Inserisci email"  required>
	                           </div>
	                           <div class="form-group">
	                              <label for="exampleInputEmail1">Password</label>
	                              <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Inserisci Password" required>
	                           </div>
	                           <div class="form-group">
	                              <p class="text-center">Registrandoti accetti i nostri <a href="#">Termini d'uso</a></p>
	                           </div>
	                           <div class="col-md-12 text-center ">
	                              <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
	                           </div>
	                           <div class="col-md-12 ">
	                              <div class="login-or">
	                                 <hr class="hr-or">
	                                 <span class="span-or">or</span>
	                              </div>
	                           </div>
	                           <div class="col-md-12 mb-3">
	                              <p class="text-center">
	                                 <a href="javascript:void();" class="google btn mybtn"><i class="fa fa-google-plus">
	                                 </i> Registrati usando Google
	                                 </a>
	                              </p>
	                           </div>
	                           <div class="form-group">
	                              <p class="text-center">Non hai un account? <a href="#" id="registrati">Registrati qui</a></p>
	                           </div>
	                        </form>	                 
					</div>
				</div>
				
			 	<div id="second">
			      <div class="myform form ">
                     <div class="logo mb-3">
                        <div class="col-md-12 text-center">
                           <button type="button" class="close" data-dismiss="modal">×</button>
                           <h1 class="titolo-loginForm">Registrati</h1>
                        </div>
                     </div>                        
                     <form method="post" action="Iscrizione" >
                        <div class="form-group">
                           <label for="exampleInputEmail1">Nome</label>
                           <input type="text"  name="nome" class="form-control" id="nome" aria-describedby="emailHelp" placeholder="Inserisci Nome" required>
                        </div>
                        <div class="form-group">
                           <label for="exampleInputEmail1">Cognome</label>
                           <input type="text"  name="cognome" class="form-control" id="cognome" aria-describedby="emailHelp" placeholder="Inserisci Cognome" required>
                        </div>
                        <div class="form-group">
                           <label for="exampleInputEmail1">Username</label>
                           <input type="text"  name="username" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Inserisci username" required>
                        </div>
                        <div class="form-group">
                           <label for="exampleInputEmail1">Email</label>
                           <input type="email" name="email"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Inserisci email" required>
                        </div>
                        <div class="form-group">
                           <label for="exampleInputEmail1">Password</label>
                           <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Inserisci Password">
                        </div>
						  <div class="row">
	                        <div class="form-check form-check-inline"> 
	                        	<label class="form-check-label" for="newsletter">Iscriviti alla newsletter</label>   						           
	        				    <input type="checkbox" class="form-check-input" id="newsletter" name="newsletter">
	   						 </div>
   						 </div>
                        <div class="col-md-12 text-center mb-3">
                           <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Iscriviti</button>
                        </div>                        
                        <div class="col-md-12 ">
                           <div class="form-group">
                              <p class="text-center"><a href="#" id="accedi">Hai gia' un account?</a></p>
                           </div>
                        </div>
                      </form>
           		   </div>
                </div>
			</div>
         </div>
      </div>
    </div>

</body>
</html>