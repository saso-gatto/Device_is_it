function Commento(idcommento,contenuto, testo, data, utente,mipiace){
	this.idcommento=idcommento;
	this.contenuto= contenuto;
	this.testo=testo;
	this.data=data;
	this.utente=utente;
	this.mipiace=mipiace;
	
}		
$(document ).ready(function() {
    

	var btnCommento = document.getElementById ("submitCommento").addEventListener ("click", function(){
		
		const o_date = new Intl.DateTimeFormat;
		const f_date = (m_ca, m_it) => Object({...m_ca, [m_it.type]: m_it.value});
		const m_date = o_date.formatToParts().reduce(f_date, {});		
		
		var user = document.getElementById("user").value;
		var email = document.getElementById("emailUtente").value;		
		var data= new Date();
		var idcontenuto = document.getElementById("idContenuto").value;
		var testo = $("#testoCommento").val();
		var commento = new Commento(null,idcontenuto,testo,data,email,null);
		
		$.ajax({
			  url: "AggiungiCommento",  
	          method: "POST",
	          data: JSON.stringify(commento),
	          contentType: "application/json",	          
	          success: function(risposta){
//	          console.log(JSON.stringify(commento));									
					document.getElementById("testoCommento").innerHTML="";
					document.getElementById("nuoviCommenti").innerHTML +=
					"<div class=\"comment col-12 mt-4 text-justify float-left\">"+"<h4>"
					+user+"</h4> <span>"+ m_date.year+ '-' + m_date.month + '-' +m_date.day+
					"</span> <button onclick=\"like()\" class=\"btn btn-outline-danger btn-sm\" style=\"float:right\">"+
					"<i class=\"far fa-heart\"> 0</i></button> <br><p>"
					+commento.testo+"</p></div>";			        
				},
	          fail: function( jqXHR, textStatus ) {
	  			alert( "Request failed: " + textStatus );
	          }        
	    });	
	});




	
		var mipiace = document.getElementById ("btnmipiace").addEventListener ("click", function(){
	
		alert("like");
		var id = document.getElementById("idCommento").value;
		
		
	});



});


function addLike(idBottone){
	
	var commento = new Commento(idBottone,null,null ,null,null,null);
		
		$.ajax({
			  url: "AggiungiMiPiace",  
	          method: "POST",
	          data: JSON.stringify(commento),
	          contentType: "application/json",	          
	          success: function(risposta){														       
				var txt = document.getElementById(idBottone).innerText;					
				var num = parseInt(txt);				
				document.getElementById(idBottone).innerHTML=num+1;			
			},
	          fail: function( jqXHR, textStatus ) {
	  			alert( "Request failed: " + textStatus );
	          }        
	    });	
	
}

