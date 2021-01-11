package Demo.deviceIsIt.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ServiziController {
	
	//testoCommento: testo, idContenuto=idcontenuto, data=data, username=username
	@PostMapping("AggiungiCommento")
	public void aggiungiCommento(String testoCommento, int idcontenuto, String data, String username) {
		System.out.println(testoCommento);
		System.out.println(idcontenuto);
		System.out.println(data);
	}
	
	
}
