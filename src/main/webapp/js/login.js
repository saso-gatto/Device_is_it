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
	
	$("#loginForm").on("submit", function(e){
		e.preventDefault();		
		var email = document.getElementById("email").value;
		var password = document.getElementById("password").value;
		
		var utente= new Utente(email,null,null,null,password,null,null);
	
		$.ajax({
				  url: "Serviziologin",  
		          method: "post",	         
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
	
	
	
	$("#formRegistrazione").on("submit", function(e){
		e.preventDefault();		
		var nome = document.getElementById("nome").value;
		var cognome = document.getElementById("cognome").value;
		var username = document.getElementById("username").value;
		var email = document.getElementById("email").value;
		var password = document.getElementById("password").value;
		var newsletter = document.getElementById(newsletter).value;
		
		var utente= new Utente(email,nome,cognome,username,password,newsletter,false);
	
		$.ajax({
				  url: "ServizioRegistrazione",  
		          method: "post",	         
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
	
	
});
