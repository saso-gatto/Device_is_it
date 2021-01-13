package Demo.deviceIsIt.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import Demo.deviceIsIt.model.Contenuto;
import Demo.deviceIsIt.persistance.DBManager;

@RestController
public class ServiziController {
	
	//testoCommento: testo, idContenuto=idcontenuto, data=data, username=username
	@PostMapping("AggiungiCommento")
	public String aggiungiCommento(String testoCommento, int idcontenuto, String data, String username) {
		System.out.println(testoCommento);
		System.out.println(idcontenuto);
		System.out.println(data);
		
		return "SUCCESS";
	}
	
	
	@PostMapping("AggiungiContenuto")
	public String aggiungiContenuto(String testo, String titolo, String data, int tipologia,  int device, String urlImage) {
		
		System.out.println(testo+" "+titolo+" "+data+" "+tipologia+" "+device+" "+urlImage);
		
		return "S"; //<-- cambiare in SUCCESS 
	}
	
	
	
	@GetMapping("creaContenuto")
	public String creaContenuto(HttpSession session, Model model) {
		Contenuto(session, model);
		return "SUCCESS";
	}
	
	@GetMapping("Contenuto")
	private String Contenuto(HttpSession session, Model model) {
		return "creazioneContenuto";
	}
	
	
	
	
	
	
}
