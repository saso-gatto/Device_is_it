$(document).ready(function(){ 

 	$('#confermaBloccoProfilo').on('show.bs.modal', function(e) {
 		var bloccaEmail = $(e.relatedTarget).data('email-blocca');	   
	    $(e.currentTarget).find('input[name="email"]').val(bloccaEmail);
	});
	
 	$('#confermaSbloccoProfilo').on('show.bs.modal', function(e) {
	    var sbloccaEmail = $(e.relatedTarget).data('email-sblocca');	  
	    $(e.currentTarget).find('input[name="email"]').val(sbloccaEmail);
	});
	
	$('#confermaEliminazioneProfilo').on('show.bs.modal', function(e) {
	    var email = $(e.relatedTarget).data('email-elimina');	  
	    $(e.currentTarget).find('input[name="email"]').val(email);
	});
		
		
	
	
	$("#cercaUtenti").on("submit", function(e){

		e.preventDefault();	
		var find = document.getElementById("daCercare").value;
		alert(find);			
		
	});	
		
		
});