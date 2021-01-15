package Demo.deviceIsIt.controller;

import javax.servlet.http.HttpSession;
import javax.swing.text.View;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import Demo.deviceIsIt.model.Utente;
import Demo.deviceIsIt.persistance.DBManager;

@Controller
public class UtentiController {


	@PostMapping("Iscrizione")	
	public String Registrazione(HttpSession session, @RequestParam String nome, @RequestParam String cognome, @RequestParam String username,
			                        @RequestParam String email, @RequestParam String password, @RequestParam (required=false) boolean newsletter) {
			
		Utente u= new Utente();
		u.setNome(nome);
		u.setCognome(cognome);
		u.setUsername(username);
		u.setEmail(email);
		u.setPassword(password);
		u.setNewsletter(newsletter);
		u.setBloccato(false);
		
		System.out.println(nome+" "+cognome+" "+username+" "+email+" "+password+" "+newsletter);
		if(DBManager.getInstance().utenteDAO().save(u)) {// salviamo l'utente sul db
			session.setAttribute("usernameLogged", email);
			return "index";
		}
		return "errore da implementare tramite un messaggio --> probabilmete si deve usare ajax";
		
	}
	
	@PostMapping("home/Aggiornamento")
	public String aggiorna(@RequestParam String firstname, @RequestParam String lastname,  @RequestParam String email, @RequestParam String password ){
		
		Utente u = new Utente(); //!!!!!!!!!!controllare che i campi non inseriti siano vuoti e non null per i controlli sottostanti
		u.setEmail(email);
		
		Utente newu = new Utente();
		if(!firstname.equals(""))
			newu.setNome(firstname);
		if(!lastname.equals(""))
			newu.setCognome(lastname);
		if(!password.equals(""))
			newu.setPassword(password);
		
		DBManager.getInstance().utenteDAO().update(u, newu); // aggiorniamo l'utente sul db
		
		System.out.println("works");
		
		return "index";
	}
	
	

	
}
