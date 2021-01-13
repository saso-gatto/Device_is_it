
/**
 * 
 */

var btnCommento = document.getElementById("submitCommento");

btnCommento.onclick = function(){
	alert("ho cliccato il bottone");
	//aggiungiCommento();
}
  
 function aggiungiCommento(){
	// var bottone = document.querySelector("#btnIscrivi");
//	var matr = document.querySelector("#matricola").value;	
	var idcontenuto = document.getElementById("idContenuto");
	var testo = document.getElementById("testoCommento");
	var data = "2021-01-13";
	var utente="prova";
	
	$.ajax({
		  url: "AggiungiCommento",  
          method: "POST",
          // specifico la URL della risorsa da contattare
          data: {idcontenuto:idcontenuto, testo:testo, data:data, utente, utente:utente},
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
}
	
