
window.onload= function(){
 caricaUltime3();
}

var ultime3 = new Array();

function caricaUltime3(){

	
	var matr = document.querySelector("#matricola").value;				
	var cogn = document.querySelector("#cognome").value;
	var nome = document.querySelector("#nome").value;
	var date = document.querySelector("#date").value;
	var scuola = document.querySelector("#school").value;
	
	
	$.ajax({
		url: "dammiScuola",
		method: "POST",
		data: {scuolaId : scuola},
		success: function(responseScuola){
			var studente = new Studente(matr, cogn, nome, date, responseScuola);
			$.ajax({
				url: "iscriviStudente",
				method: "POST",
				data: JSON.stringify(studente),
				contentType: "application/json",
				success: function(response){
					if (response != null){
						aggiungiStudente(response);
					}
				},
				fail: function( jqXHR, textStatus ) {
		  			alert( "Request failed: " + textStatus );
				}
			});
		},
		fail: function( jqXHR, textStatus ) {
  			alert( "Request failed: " + textStatus );
		}
	});	
}