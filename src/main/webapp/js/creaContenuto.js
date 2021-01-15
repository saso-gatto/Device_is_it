function Contenuto(id, data, device, testo, titolo,tipo,img, anteprima){
	this.id=id;
	this.data=data;
	this.device=device;
	this.testo=testo;
	this.titolo=titolo;
	this.tipo=tipo;
	this.img=img;
	this.anteprima=anteprima;
}


$(document ).ready(function() {
    console.log( "ready!" );
	var pubblicaContenuto=document.getElementById("btnPubblicaContenuto").addEventListener("click",function(){
		creazioneContenuto();
		});
});

function creazioneContenuto(){
	alert("sono in creazione contenuto");
	var data = new Date();
	var device =  document.getElementById("deviceDaAggiungere").value;
	var testo = document.getElementById("testo").value;
	var titolo = document.getElementById("titoloRec").value;
	var tipo = document.getElementById("tipoContenuto").value;
	var img= document.getElementById("img").value;
	var anteprima=document.getElementById("anteprima").value;
	var contenuto = new Contenuto (null,data,device,testo,titolo,tipo,img,anteprima);
	$.ajax({
			  url: "AggiungiContenuto",  
	          method: "POST",
	          // specifico la URL della risorsa da contattare
	          data: JSON.stringify(contenuto),
	          // imposto l'azione in caso di successo
	          contentType: "application/json",
	          
	          success: function(risposta){
	          console.log(JSON.stringify(risposta));
			  //visualizzo il contenuto del file nel div htmlm
			  window.location.href="/index";
	          alert("funziona");
	          },
	          //imposto l'azione in caso di insuccesso
	          fail: function( jqXHR, textStatus ) {
	  			alert( "Request failed: " + textStatus );
	          }        
	    });	
	
}
