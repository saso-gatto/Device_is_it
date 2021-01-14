function Commento(idcommento, testo, data, emailUtente){
	this.idcommento=idcommento;
	this.testo=testo;
	this.data=data;
	this.emailUtente=emailUtente;
	
}		
$(document ).ready(function() {
    console.log( "ready!" );
	

	var btnCommento = document.getElementById ("submitCommento").addEventListener ("click", function(){
		var emailUtente = document.getElementById("emailUtente").innerText;
		alert(emailUtente);
		var data="2021-01-14";
		var id = document.getElementById("idContenuto").innerText;
		var testo = $("#testoCommento").val();
		var commento = Commento(id,testo,data,emailUtente);
	
		$.ajax({
			  url: "AggiungiCommento",  
	          method: "POST",
	          // specifico la URL della risorsa da contattare
	          data: JSON.stringify(commento),
	          // imposto l'azione in caso di successo
	          contentType: "application/json",
	          
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