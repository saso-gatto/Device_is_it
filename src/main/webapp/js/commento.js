function Commento(idcommento,contenuto, testo, data, utente){
	this.idcommento=idcommento;
	this.contenuto= contenuto;
	this.testo=testo;
	this.data=data;
	this.utente=utente;
	
}		
$(document ).ready(function() {
    console.log( "ready!" );
	

	var btnCommento = document.getElementById ("submitCommento").addEventListener ("click", function(){
		var email = document.getElementById("emailUtente").innerText;
		alert(email);
		var data= new Date();
		var idcontenuto = document.getElementById("idContenuto").innerText;
		var testo = $("#testoCommento").val();
		var commento = new Commento(null,idcontenuto,testo,data,email);
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