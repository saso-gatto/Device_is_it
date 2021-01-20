function Utente (email, nome, cognome, password, username, newsletter, bloccato){

	this.email=email;
	this.nome=nome;
	this.cognome=cognome;
	this.password=password;
	this.username=username;
	this.newsletter=newsletter;
	this.bloccato=bloccato;
	
}


$(document).ready(function(){ $("#formSetProfilo").on("submit", function(e){
	
	e.preventDefault();
	
	var email=document.getElementById("emailUtente").value;
	var nome=document.getElementById("nomeUtente").value;
	var cognome= document.getElementById("cognomeUtente").value;
	var password= document.getElementById("password").value;
	var newsletter=document.getElementById("newsletterUtente").value;
	var bloccato = false;

	var utente = new Utente(email,nome,cognome,password,newsletter,bloccato);

	$.ajax({
			  url: "ModificaProfilo",  
	          method: "POST",	          
	          data: JSON.stringify(utente),	          
	          contentType: "application/json",	          
	          success: function(risposta){
	          console.log(JSON.stringify(risposta));							  
			  window.location.href="/index";	         
	          },	          
	          fail: function( jqXHR, textStatus ) {
	  			alert( "Request failed: " + textStatus );
	          }        
	    });	

	});

}); 
 