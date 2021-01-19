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
					"</span> <button onclick=\"addLike(${commento.idcommento})\" class=\"btn btn-outline-danger btn-sm\""+
					" style=\"float:right; width:50px; padding:0px; \">	<div class=\"row\"> <i class=\"far fa-heart\""+
					" style=\"padding:6px 8px 6px 20px ; \"></i><p style=\"margin:0px; padding-top:2px;"+
					" padding-bottom: 0px; \" id=\"${commento.idcommento}\"> 0 </p></div></button> <br><p>"+
					commento.testo+"</p></div>";
										
					document.getElementById(testoCommento).innerText("");					
								        
				},
	          fail: function( jqXHR, textStatus ) {
	  			alert( "Request failed: " + textStatus );
	          }        
	    });	
	});

});


function addLike(idBottone){
	
    var commento = new Commento(idBottone,null,null,null,null,null);	
	var user = document.getElementById("user").value;
	
	if(user!=null) {		
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
	
}

