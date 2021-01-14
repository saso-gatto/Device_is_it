
/**
 * 
 */

$(document ).ready(function() {
    console.log( "ready!" );
	
	//var testo = document.getElementById("testoCommento").value;

	var btnCommento = document.getElementById ("submitCommento").addEventListener ("click", function(){
		// var bottone = document.querySelector("#btnIscrivi");
	//	var matr = document.querySelector("#matricola").value;	
		var data = "2021-01-13";
		var ut="prova";
		var id = document.getElementById("idContenuto").innerText;
		
		var testo = $("#testoCommento").val();
		
		console.log("id: "+id);
		console.log("testo: "+testo);
	
		$.ajax({
			  url: "AggiungiCommento",  
	          method: "POST",
	          // specifico la URL della risorsa da contattare
	          data: {idcontenuto:id, testo:testo, data:data, utente:ut}, // se tolgo i commenti ho errori mannaggia
	          // imposto l'azione in caso di successo
	          success: function(risposta){
	          //visualizzo il contenuto del file nel div htmlm
	            alert("funziona");
	          },
	          //imposto l'azione in caso di insuccesso
	          fail: function( jqXHR, textStatus ) {
	  			alert( "Request failed: " + textStatus );
	          }        
	    });	
	});

});