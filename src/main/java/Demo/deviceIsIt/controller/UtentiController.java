package Demo.deviceIsIt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import Demo.deviceIsIt.model.Utente;
import Demo.deviceIsIt.persistance.DBManager;

@Controller
public class UtentiController {


	@PostMapping("home/Iscrizione")
	public String iscrivi(@RequestParam String firstname, @RequestParam String lastname,  @RequestParam String email, @RequestParam String password ){
		
		Utente u= new Utente();
		u.setEmail(email);
		u.setNome(firstname);
		u.setCognome(lastname);
		u.setPassword(password);
		
		DBManager.getInstance().utenteDAO().save(u); // salviamo l'utente sul db
		
		return "index";
	}

	
}
