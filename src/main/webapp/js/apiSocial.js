var profile;

function accessoGoogle(googleUser){
   
		  profile = googleUser.getBasicProfile();
//        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
//        console.log('Full Name: ' + profile.getName());
//        console.log('Given Name: ' + profile.getGivenName());
//        console.log('Family Name: ' + profile.getFamilyName());
//        console.log("Image URL: " + profile.getImageUrl());
//        console.log("Email: " + profile.getEmail());
    //		var btn=document.getElementById("logginGoogle").click();	
		
		
}

 
function logoutSocial(){
	// logout google
	gapi.auth2.getAuthInstance().signOut().then(function(){
		console.log('user logout')
	})
	
	// logout FB
	FB.logout(function(response) {
	  // user is now logged out
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


function ricarica(){
    
    var nome= profile.getGivenName();
    var cognome= profile.getFamilyName();
    var email= profile.getEmail();
	
	var utente= new Utente(email,nome,cognome,email,false,false);
	
	$.ajax({
			  url: "loginSocial",  
	          method: "POST",	          
	          data: JSON.stringify(utente),	          
	          contentType: "application/json",	          
	          success: function(risposta){
	          
			  console.log(JSON.stringify(risposta));
			  alert("ho fatto l'accesso'")										 
			 
			  window.location.href="/index";	         	          
			  },	          
	          fail: function( jqXHR, textStatus ) {
	  			alert( "Request failed: " + textStatus );
	          }        
	    });	

}



//  --------->   API FACEBOOK

var person = { id: "", first_name: "", last_name: "", email: ""};
var utente;
function accessofacebook(){
	
		
//		e.preventDefault();
		FB.login(function (response) {
                if (response.status == "connected") {
					
					FB.api('/me?fields=id,first_name,last_name,email', function (userData) {
                        person.id = userData.id;
						person.first_name = userData.first_name;
						person.last_name = userData.last_name;
                        person.email = userData.email;

                    
					utente= new Utente(person.email, person.first_name, person.last_name, person.email,false,false);
					
				
					
					$.ajax({
							  url: "loginSocial",  
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
                }
				
            });
}



// send email

//function sendEmail(){
//	alert("email inviata");
//	Email.send({
//		Host: "smtp.gmail.com",
//		Username: "davyde8@gmail.com",
//		Password: "",
//		To: "davideragona@libero.it",
//		From: "davyde8@gmail.com",
//		Subject: 'Ti hanno inviato un email con js',
//		Body: 'testo email',
//		
//		}).then(("messaggio"));
//	
//	
//}

