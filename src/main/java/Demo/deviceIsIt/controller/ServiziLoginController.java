package Demo.deviceIsIt.controller;


import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import Demo.deviceIsIt.model.Utente;
import Demo.deviceIsIt.persistance.DBManager;

@RestController
public class ServiziLoginController {


	@PostMapping("loginGoogle")
	public Utente findModelli(HttpSession session, @RequestBody Utente utente) {
		
		if(!DBManager.getInstance().utenteDAO().existsUser(utente.getEmail())) {
			DBManager.getInstance().utenteDAO().save(utente);
		}
	
		session.setAttribute("usernameLogged", utente.getEmail());
		session.setAttribute("username",utente.getEmail());
		
		return utente;		
	}


}
