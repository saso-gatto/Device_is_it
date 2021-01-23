function Device (idDevice, modello, marca, tipoDevice, memoria, ram, display, batteria, fotocamera, cpu, peso, os, img){

	this.idDevice=idDevice;
	this.modello=modello;
	this.marca=marca;
	this.tipoDevice=tipoDevice;
	this.memoria=memoria;
	this.ram=ram;
	this.display=display;
	this.batteria=batteria;
	this.fotocamera=fotocamera;
	this.cpu=cpu;
	this.peso=peso;
	this.os=os;
	this.img=img;	
}

function Utente (email, nome, cognome,username, password, newsletter, bloccato){
	this.email=email;
	this.nome=nome;
	this.cognome=cognome;
	this.username=username;
	this.password=password;
	this.newsletter=newsletter;
	this.bloccato=bloccato;	
}

$(document).ready(function(){

	var preferito= document.getElementById ("btnPreferiti").addEventListener ("click", function(){
		
	   var id = document.getElementById("idDevice").value;
	   var emailUtente = document.getElementById("utente").value;
		
		alert(emailUtente);

	   var device = new Device (id, null, null, null, null, null, null, null, null, null, null, null, null);
	   var utente= new Utente(emailUtente,null,null,null,null,null,null);

		$.ajax({
				  url: "addPreferiti",  
		          method: "post",	         
		          data: JSON.stringify(device, utente),	       
		          contentType: "application/json",	         
		          success: function(risposta){				  				
			  		if(risposta=="success"){
						$('#conferma').modal('show');					
					}				
		          },	          		                
		    });	
		
	});	
	
});