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
      <h1 class="text_head" align=left  > Cerca i migliori Device </h1>
      <br>
      <br>
      <h2 class="text_head"> Recensioni </h2> 
      <a href="#" class="btn btn-warning">Clicca qui</a> 
    </div>
  </div>
	
	
	








<!-- Ultime News -->
    <section class="latest-blog">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Ultime News </h2>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-latest-blog">
                        <img src="#####" alt="">
                        <div class="latest-text">
                            <div class="tag-list">
                                <div class="tag-item">
                                    <i class="fa fa-calendar-o"></i>
                                    Gen 8,2021
                                </div>
                                <div class="tag-item">
                                    <i class="fa fa-comment-o"></i>
                                    5
                                </div>
                            </div>
                            <a href="#">
                                <h4> Samsung S21, 3 modelli in uscita a fine gennaio</h4>
                            </a>
                            <p> Galaxy S21, ci siamo. Il 14 gennaio Samsung presenterà finalmente la nuova gamma di smartphone top di gamma </p>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6">
                    <div class="single-latest-blog">
                        <img src="img/latest-2.jpg" alt="">
                        <div class="latest-text">
                            <div class="tag-list">
                                <div class="tag-item">
                                    <i class="fa fa-calendar-o"></i>
                                    May 4,2019
                                </div>
                                <div class="tag-item">
                                    <i class="fa fa-comment-o"></i>
                                    5
                                </div>
                            </div>
                            <a href="#">
                                <h4> Nuova uscita Macbook Pro 16 con chip M1X</h4>
                            </a>
                            <p> Apple Silicon in fase di test: possibile debutto sul MacBook Pro 16 </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-latest-blog">
                        <img src="img/latest-3.jpg" alt="">
                        <div class="latest-text">
                            <div class="tag-list">
                                <div class="tag-item">
                                    <i class="fa fa-calendar-o"></i>
                                    May 4,2019
                                </div>
                                <div class="tag-item">
                                    <i class="fa fa-comment-o"></i>
                                    5
                                </div>
                            </div>
                            <a href="#">
                                <h4> Huawei perde google! Cosa succede?</h4>
                            </a>
                            <p> In casa Huawei qualcosa non va, addio servizi Google </p>
                        </div>
                    </div>
                </div>
            </div>
            
                    
                    


        </div>
    </section>
    <!-- fine "Ultime news  -->







<!--  
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

-->


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


</body>

<!-- Footer inizio -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left">
                        <div class="footer-logo">
                            <a href="#"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello.colorlib@gmail.com</li>
                        </ul>
                        <div class="footer-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1">
                    <div class="footer-widget">
                        <h5>Information</h5>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Checkout</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Serivius</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="footer-widget">
                        <h5>My Account</h5>
                        <ul>
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Shopping Cart</a></li>
                            <li><a href="#">Shop</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="newslatter-item">
                        <h5>Join Our Newsletter Now</h5>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#" class="subscribe-form">
                            <input type="text" placeholder="Enter Your Mail">
                            <button type="button">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
    </footer>
    <!-- Footer fine -->

</html>