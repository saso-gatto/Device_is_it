package Demo.deviceIsIt.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import Demo.deviceIsIt.model.Commento;

import Demo.deviceIsIt.persistance.DBManager;

@RestController
public class ServiziController {
	

	@PostMapping("AggiungiCommento")
	public Commento aggiungiCommento(@RequestBody Commento commento  ) {
		DBManager.getInstance().CommentoDAO().save(commento);				

		return commento;
	}
	
	
	@PostMapping("AggiungiContenuto")
	public String aggiungiContenuto(String testo, String titolo, String data, int tipologia,  int device, String urlImage) {
		
		System.out.println(testo+" "+titolo+" "+data+" "+tipologia+" "+device+" "+urlImage);
		
		return "S"; //<-- cambiare in SUCCESS 
	}	

	
}