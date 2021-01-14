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
var  schedaTecSmartphone= document.getElementById("btnSchedaTecSmatphone");
var  schedaTecComputer= document.getElementById("btnSchedaTecComputer");
var  news= document.getElementById("btnNews");

recSmartphone.onclick = function() {
  window.location.href = "newRecensioneSmartphone";

}

recComputer.onclick = function() {
  window.location.href = "newRecensioneComputer";

}

schedaTecSmartphone.onclick = function() {
  window.location.href = "newSchedaTecnicaSmartphone";

}
schedaTecComputer.onclick = function() {
  window.location.href = "newSchedaTecnicaComputer";

}

news.onclick = function() {
  window.location.href = "newArticolo";

}








//function inserisciContenuto(){
//
//	var tipoContenuto= 1;
//
//	$.ajax({
//		url: "creaContenuto",   // == cosa vuoi chiamare?  (un cotroller)
//		method: "GET",  
//		data:{tipologiaContenuto:tipoContenuto},
//		success: function(response){
//			alert(response);
//			window.location.href = "Contenuto";
//		},
//		fail: function( jqXHR, textStatus ) {
//  			alert( "Request failed: " + textStatus );
//		}
//	});			
//}