<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Device is it</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">  	
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  	
  	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">  <!-- font-family: 'Kaushan Script', cursive; -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> <!-- icone bootstrap -->
  	<link rel="stylesheet" href="css/news.css" type="text/css"/>
  	<link rel="stylesheet" href="css/home.css" type="text/css"/>
  	
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
            
             <div class="mx-auto order-0">	             			 
	   			 <div class="form-inline my-lg-0">
  					<div class="input-group "> 
  						<input class="form-control mr-sm-1" type="search" placeholder="Search" aria-label="Search">
      					<div class="input-group-append"> 
      						<button type="button" class="btn btn-outline-warning">cerca</button>	
      					</div>
    				</div>
   			 	</div>	   			 
   			 </div>    			 	 		       		
   			
            
   			<div class="navbar-nav">   			
	   			<c:if test="${usernameLogged == null}">  <!--  se non c'� un username loggato mostrami il login -->
	    			<i id="loginIcon" class="fa fa-user-circle" style="font-size:36px"  data-toggle="modal" data-target="#loginForm" ></i>  <!-- icona login  -->   
	    		</c:if>
	    		<c:if test="${usernameLogged != null}"> <!-- se c'� un username loggato -->
	    			Utente loggato: ${usernameLogged}
	    			<a href="doLogout"> Logout </a>
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
								<button type="button" class="close" data-dismiss="modal">�</button>
								<h1 class="titolo-loginForm">Login</h1>
							 </div>
						</div>
	                   <form method="post" action="login">            
	                           <div class="form-group ">
	                              <label for="exampleInputEmail1">Email address</label>
	                              <input type="email" name="email"  class="form-control"  id="email" aria-describedby="emailHelp" placeholder="Enter email"  required>
	                           </div>
	                           <div class="form-group">
	                              <label for="exampleInputEmail1">Password</label>
	                              <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password" required>
	                           </div>
	                           <div class="form-group">
	                              <p class="text-center">By signing up you accept our <a href="#">Terms Of Use</a></p>
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
	                                 </i> Signup using Google
	                                 </a>
	                              </p>
	                           </div>
	                           <div class="form-group">
	                              <p class="text-center">Don't have account? <a href="#" id="signup">Sign up here</a></p>
	                           </div>
	                        </form>	                 
					</div>
				</div>
				
			 	<div id="second">
			      <div class="myform form ">
                     <div class="logo mb-3">
                        <div class="col-md-12 text-center">
                           <button type="button" class="close" data-dismiss="modal">�</button>
                           <h1 class="titolo-loginForm">Signup</h1>
                        </div>
                     </div>                        
                     <form method="post" action="home/Iscrizione" >
                        <div class="form-group">
                           <label for="exampleInputEmail1">First Name</label>
                           <input type="text"  name="firstname" class="form-control" id="firstname" aria-describedby="emailHelp" placeholder="Enter Firstname" required>
                        </div>
                        <div class="form-group">
                           <label for="exampleInputEmail1">Last Name</label>
                           <input type="text"  name="lastname" class="form-control" id="lastname" aria-describedby="emailHelp" placeholder="Enter Lastname" required>
                        </div>
                        <div class="form-group">
                           <label for="exampleInputEmail1">Username</label>
                           <input type="text"  name="username" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter username" required>
                        </div>
                        <div class="form-group">
                           <label for="exampleInputEmail1">Email address</label>
                           <input type="email" name="email"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" required>
                        </div>
                        <div class="form-group">
                           <label for="exampleInputEmail1">Password</label>
                           <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password">
                        </div>
                        <div class="form-check-inline"> 
                        	<p class="newsletter"> Iscriviti alla newsletter </p>     						           
        				    <input type="checkbox" class="form-check-input" id="check1" name="vehicle1" value="something" checked>
   						 </div>
                        <div class="col-md-12 text-center mb-3">
                           <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Get Started For Free</button>
                        </div>                        
                        <div class="col-md-12 ">
                           <div class="form-group">
                              <p class="text-center"><a href="#" id="signin">Already have an account?</a></p>
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