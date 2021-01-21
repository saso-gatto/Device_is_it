//alert("Sono nel file javascript!!");
window.addEventListener("load", function(){ //"load"-->al caricamento della pagina inizializziamo il form per effettuare login e sign up
	checklogin();
});

var modalLogin=true;

function  checklogin(){
	 
	$("#registrati").click(function() {	
		$("#first").fadeOut("fast", function() {
			$("#second").fadeIn("fast");
			modalLogin=false;
		});
	});
	
	$("#accedi").click(function() {
		$("#second").fadeOut("fast", function() {
			$("#first").fadeIn("fast");
			modalLogin=true;
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
	
	var Login = document.getElementById("loginForm");
		document.getElementById("btnLogin").addEventListener("submit", function () {
 	 	Login.submit();
	});
	
	var Registrazione = document.getElementById("formRegistrazione");
		document.getElementById("btnIscriviti").addEventListener("submit", function () {
 	 	Registrazione.submit();
	});
	
	
	$("#loginForm").on("submit", function(e){
		
		if(modalLogin){
			
			alert("login");
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
							$('#showErrorLogin').modal('show');						
						}									
			          },	            	  
			    });	
		}
	});


	$("#formRegistrazione").on("submit", function(e){

		alert("registrazione");
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
						$('#showErrorRegistrazione').modal('show');						
					}									
		          },	            	  
		    });	
	});
	
	
});

		


