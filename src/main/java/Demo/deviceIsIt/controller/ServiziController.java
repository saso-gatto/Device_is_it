package Demo.deviceIsIt.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ServiziController {
	
	//testoCommento: testo, idContenuto=idcontenuto, data=data, username=username
	@PostMapping("AggiungiCommento")
	public String aggiungiCommento(@RequestParam int idcontenuto, @RequestParam String testoCommento,  
			@RequestParam String data,@RequestParam String username) {
		System.out.println("testoCommento");
		System.out.println(idcontenuto);
		System.out.println(data);
		
		return "SUCCESS";
	}
	
	
	@PostMapping("AggiungiContenuto")
	public String aggiungiContenuto(String testo, String titolo, String data, int tipologia,  int device, String urlImage) {
		
		System.out.println(testo+" "+titolo+" "+data+" "+tipologia+" "+device+" "+urlImage);
		
		return "S"; //<-- cambiare in SUCCESS 
	}
	
	
	
	
}
