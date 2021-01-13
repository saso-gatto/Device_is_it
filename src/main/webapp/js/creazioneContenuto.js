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


//function inserisciContenuto(){
//	
//	$.ajax({
//		url: "creaContenuto",   // == cosa vuoi chiamare?  (un cotroller)
//		method: "POST",  
//		data:{matr:matricola, cognome:cognome, nome:nome, date:date, scuola:scuola }, // coppia etichetta:variabile
//		success: function(response){
//			if (response === "SUCCESS"){
//				var studente = new Studente(matricola, cognome, nome, date, scuola);
//				aggiungiStudente(studente);
//			}
//			alert(response);
//		},
//		fail: function( jqXHR, textStatus ) {
//  			alert( "Request failed: " + textStatus );
//		}
//	});			
//	
//	//var studente = new Studente(matricola, cognome, nome, email);
//	
//	//aggiungiStudente(studente);
//}