<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Device Is It</title>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">  	
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
  	
  	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">  <!-- font-family: 'Kaushan Script', cursive; -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> <!-- icone bootstrap -->
  	
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
    
   	<div class="body_header col-lg-12 col-md-12" >
    <div>
      <h1 class="text_head" align=right  > It's Nice To Meet You </h1>
      <h2 class="text_head"> Hey, check this out. </h2>
      <a href="#" class="btn btn-warning">Find out more</a>
    </div>
  </div>
	
	
	
	 <div class="jumbotron">
	  <div class="row">
	    <div class="col-sm-4">
	      <h3>Column 1</h3>
	      <p>Lorem ipsum dolor..</p>
	    </div>
	    <div class="col-sm-4">
	      <h3>Column 2</h3>
	      <p>Lorem ipsum dolor..</p>
	    </div>
	    <div class="col-sm-4">
	      <h3>Column 3</h3>
	      <p>Lorem ipsum dolor..</p>
	    </div>
	  </div>
	</div>



<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
<script >
//Get the button
var mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>

<div class=container id="funfa">
<p> funfa </p>
</div>


</body>

</html>