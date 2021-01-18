function Commento(idcommento,contenuto, testo, data, utente){
	this.idcommento=idcommento;
	this.contenuto= contenuto;
	this.testo=testo;
	this.data=data;
	this.utente=utente;
	
}		
$(document ).ready(function() {
    
	

	var btnCommento = document.getElementById ("submitCommento").addEventListener ("click", function(){
		
		const o_date = new Intl.DateTimeFormat;
		const f_date = (m_ca, m_it) => Object({...m_ca, [m_it.type]: m_it.value});
		const m_date = o_date.formatToParts().reduce(f_date, {});		
		
		var user = document.getElementById("username").value;
		console.log( user);
		
		var email = document.getElementById("emailUtente").value;		
		var data= new Date();
		var idcontenuto = document.getElementById("idContenuto").value;
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
	          console.log(JSON.stringify(commento));
			  //visualizzo il contenuto del file nel div htmlm
				document.getElementById("nuoviCommenti").innerHTML +=
				"<div class=\"comment col-12 mt-4 text-justify float-left\">"+"<h4>"
				+user+"</h4> <span>"+ m_date.year+ '-' + m_date.month + '-' +m_date.day+"</span> <br><p>"+commento.testo+"</p></div>";
	          },
	          //imposto l'azione in caso di insuccesso
	          fail: function( jqXHR, textStatus ) {
	  			alert( "Request failed: " + textStatus );
	          }        
	    });	
	});

});