<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

 <meta charset="ISO-8859-1">
 <link rel="stylesheet" href="css/footer.css" type="text/css"/>
 

 
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
		  <style>
		    #map{
		      height:220px;
		      width: 100 px;
		    }
		  </style>
 
 <script src="./js/api.js"></script>
 
</head>
<body>

<!-- Footer inizio -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left">
                        <div align="center" class="footer-logo">
                            <a href=""><img src="images/logo_deviceIsIt.png" alt=""></a>
                        </div>
                        <div align="center" class="footer-social">
	                        
	                            <a href="#"><i class="fa fa-facebook"></i></a>
	                            <a href="#"><i class="fa fa-instagram"></i></a>
	                            <a href="https://twitter.com/intent/tweet?button_hashtag=DeviceIsIt"><i class="fa fa-twitter"></i></a>	                        	   
	                   </div>
                    </div>
                </div>
                

               <div id="map"class="col-lg-2">
  <script>
  function initMap(){
      // Map options
      var options = {
        zoom:12,
        center:{lat:39.35800,lng:16.22714}
      }

      // New map
      var map = new google.maps.Map(document.getElementById('map'), options);

      // Listen for click on map
      google.maps.event.addListener(map, 'click', function(event){
        // Add marker
        addMarker({coords:event.latLng});
      });


      // Array of markers
      var markers = [
        {
          coords:{lat:39.35800,lng:16.22714},
          iconImage:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
          content:'<h2>UNICAL</h2>'
        },

      ];

      // Loop through markers
      for(var i = 0;i < markers.length;i++){
        // Add marker
        addMarker(markers[i]);
      }

      // Add Marker Function
      function addMarker(props){
        var marker = new google.maps.Marker({
          position:props.coords,
          map:map,
          //icon:props.iconImage
        });

        // Check for customicon
        if(props.iconImage){
          // Set icon image
          marker.setIcon(props.iconImage);
        }

        // Check content
        if(props.content){
          var infoWindow = new google.maps.InfoWindow({
            content:props.content
          });

          marker.addListener('click', function(){
            infoWindow.open(map, marker);
          });
        }
      }
    }
  </script>
                </div>
                
                
                
                <div class="col-lg-3">
                	<div align="left" class="footer-widget">
	                	<ul>
	                            <h5>Un team fantastico!</h5>
	                            <li>Ci puoi trovare nelle sedi: </li>
	                            <li><a href="https://it.wikipedia.org/wiki/Reggio_Calabria"> - Reggio Calabria</a></li>
	                            <li><a href="https://it.wikipedia.org/wiki/Locri"> - Locri </a></li>
	                            <li><a href="https://it.wikipedia.org/wiki/Cosenza"> - Cosenza </a></li>
	                            <li><a href="https://it.wikipedia.org/wiki/Cittanova_(Italia)"> - Cittanova </a></li>
	                            
	                        </ul>
	                 </div>
                </div>
                <div class="col-lg-2">
                    <div align="center" class="footer-widget">
                        <h5>Informazioni</h5>
                        <ul>
                            <li><a href="#">Chi siamo</a></li>
                            
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div align="center" class="footer-widget">
                        <h5>Account</h5>
                        <ul>
                            
                <c:if test="${usernameLogged == null}">  <!--  se non c'� un username loggato mostrami il login -->
	    			<li><a href="#" data-toggle="modal" data-target="#loginForm" >Il mio Account </a></li>  
	    		</c:if>
	    		
	    		<c:if test="${usernameLogged != null}"> <!-- se c'� un username loggato -->

	    			<div class="navbar-nav">             
               			<div class="nav-item dropdown">
		    			<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"> Il mio Account </a>
				
	                    <div class="dropdown-menu dropdown-menu-right text-right">
	                        <form method="get" action="/profilo">
				          		<input type="hidden" id="email" name="email" value="${usernameLogged}">			          	
								<button class="dropdown-item" type="submit" class="btn"> Profilo</button>
	                        </form>
	                        <c:if test="${usernameLogged == 'admin@admin.it'}">  <!--  se � loggato l'admin -->	
	                        	<a href="listaUtenti" class="dropdown-item" > Lista Utenti </a>
		    				</c:if>
	                        <a href="doLogout" class="dropdown-item" onclick="logoutSocial()"> Logout </a>	        
	                    </div>		
	                  </div>
	               </div>
	               
	               
	    		</c:if> 
                            
                            
                            
                           
                        </ul>
                    </div>
                </div>
                <!-- Per la possibilit� di iscriversi alla newsletter -->
                <!--  
                <div class="col-lg-4">
                    <div class="newslatter-item">
                        <h5>Iscriviti alla nostra Newsletter</h5>
                        <p> Ricevi notifiche vie E-mail riguardo le ultime news e recensioni del mondo TECH </p>
                        <form action="#" class="subscribe-form">
                            <input type="text" placeholder="Inserisci la tua e-mail">
                            <button type="button">Iscriviti</button>
                        </form>
                    </div>
                </div>-->
                
            </div>
        </div>
        
        
    
			<!--  script con key per api google maps -->
	
  <script async defer
   		 src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAd9NeSsVmtkVSK0fLme7xGriZObJOGhmc&callback=initMap">
	</script>
  


</footer>      <!-- Footer fine -->



</body>
</html>