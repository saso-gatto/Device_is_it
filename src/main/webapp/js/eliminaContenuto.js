$(document).ready(function(){ 

 	$('#confermaEliminazione').on('show.bs.modal', function(e) {
	    var Id = $(e.relatedTarget).data('id-contenuto');
	    $(e.currentTarget).find('input[name="idContenuto"]').val(Id);
	});
	
	$('#confermaEliminazioneProfilo').on('show.bs.modal', function(e) {
	    var email = $(e.relatedTarget).data('email-utente');
	    console.log("sono qui");
	    console.log(email);
	    $(e.currentTarget).find('input[name="email"]').val(email);
	});
		
});
