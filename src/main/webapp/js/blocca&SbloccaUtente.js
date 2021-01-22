$(document).ready(function(){ 

 	$('#confermaBloccoProfilo').on('show.bs.modal', function(e) {
 		var email = $(e.relatedTarget).data('email-utente');
	    console.log("sono qui");
	    console.log(email);
	    $(e.currentTarget).find('input[name="email"]').val(email);
	});
	
 	$('#SbloccoProfilo').on('show.bs.modal', function(e) {
	    var email = $(e.relatedTarget).data('email-utente');
	    console.log("sono qui");
	    console.log(email);
	    $(e.currentTarget).find('input[name="email"]').val(email);
	});
		
});