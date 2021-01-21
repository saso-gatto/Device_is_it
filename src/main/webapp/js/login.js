//alert("Sono nel file javascript!!");
window.addEventListener("load", function(){ //"load"-->al caricamento della pagina inizializziamo il form per effettuare login e sign up
	checklogin();
});


function  checklogin(){
	 
	$("#registrati").click(function() {	
		$("#first").fadeOut("fast", function() {
			$("#second").fadeIn("fast");
		});
	});
	
	$("#accedi").click(function() {
		$("#second").fadeOut("fast", function() {
			$("#first").fadeIn("fast");
		});
	});
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
	
	registrazioneUtente();
	loginUtente();	
});

function loginUtente(){
		var login = document.getElementById("btnLogin").addEventListener ("click", function(e){
		e.preventDefault();		
		var email = document.getElementById("emailLogin").value;
		var password = document.getElementById("passwordLogin").value;
		
		var utente= new Utente(email,null,null,null,password,null,null);
	
		$.ajax({
				  url: "Serviziologin",  
		          method: "POST",	         
		          data: JSON.stringify(utente),	       
		          contentType: "application/json",	         
		          success: function(risposta){				  									
					if(risposta=="success"){
						window.location.href="/index";
					}					
					if(risposta=="error"){
						$('#showError').modal('show');						
					}									
		          },	            	  
		    });	
	});

}


function registrazioneUtente(){
		var registrazione = document.getElementById("btnIscriviti").addEventListener ("click", function(e){
		e.preventDefault();		
		var nome = document.getElementById("nome").value;
		var cognome = document.getElementById("cognome").value;
		var username = document.getElementById("username").value;
		var email = document.getElementById("email").value;
		var password = document.getElementById("password").value;
		var newsletter;
		if (document. getElementById("newsletter").checked) {
			newsletter=true;
		}
		else {
			newsletter=false;
		}
		
		var utente= new Utente(email,nome,cognome,username,password,newsletter,null);
	
		$.ajax({
				  url: "ServizioRegistrazione",  
		          method: "POST",	         
		          data: JSON.stringify(utente),	       
		          contentType: "application/json",	         
		          success: function(risposta){				  									
					if(risposta=="success"){
						window.location.href="/index";
					}					
					if(risposta=="error"){
						$('#showError').modal('show');						
					}									
		          },	            	  
		    });	
	});	

}
