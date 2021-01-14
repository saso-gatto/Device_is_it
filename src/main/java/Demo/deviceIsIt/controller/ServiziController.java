package Demo.deviceIsIt.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import Demo.deviceIsIt.model.Commento;

import Demo.deviceIsIt.persistance.DBManager;

@RestController
public class ServiziController {
	

	@PostMapping("AggiungiCommento")
	public Commento aggiungiCommento(@RequestBody Commento commento  ) {
		DBManager.getInstance().CommentoDAO().save(commento);				
		System.out.println(commento.getTesto());
		System.out.println(commento.getidcommento());
		System.out.println(commento.getData());
		System.out.println(commento.getutente());
		
		return commento;
	}
	
	
	@PostMapping("AggiungiContenuto")
	public String aggiungiContenuto(String testo, String titolo, String data, int tipologia,  int device, String urlImage) {
		
		System.out.println(testo+" "+titolo+" "+data+" "+tipologia+" "+device+" "+urlImage);
		
		return "S"; //<-- cambiare in SUCCESS 
	}	
	
}