// Get the modal
var modal = document.getElementById("scegliContenuto");

// Get the button that opens the modal
var btn = document.getElementById("addContenuto");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

var  recSmartphone= document.getElementById("btnRecSmartphone");
var  recComputer= document.getElementById("btnRecComputer");
var  schedaTec= document.getElementById("btnSchedaTec");
var  news= document.getElementById("btnNews");

recSmartphone.onclick = function() {
  window.location.href = "Contenuto";
//inserisciContenuto();
}

function inserisciContenuto(){
	
	
	
	
	
	$.ajax({
		url: "creaContenuto",   // == cosa vuoi chiamare?  (un cotroller)
		method: "GET",  
		success: function(response){
			alert(response);
			 
		},
		fail: function( jqXHR, textStatus ) {
  			alert( "Request failed: " + textStatus );
		}
	});			
}