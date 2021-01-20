package Demo.deviceIsIt.controller;


import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import Demo.deviceIsIt.model.Utente;
import Demo.deviceIsIt.persistance.DBManager;

@RestController
public class ServiziLoginController {


	@PostMapping("loginSocial")
	public Utente loginSocial(HttpSession session, @RequestBody Utente utente) {
		
		if(!DBManager.getInstance().utenteDAO().existsUser(utente.getEmail())) {
			DBManager.getInstance().utenteDAO().save(utente);
		}
	
		session.setAttribute("usernameLogged", utente.getEmail());
		session.setAttribute("username",utente.getUsername());		
		return utente;		
	}
	
	@PostMapping("ModificaProfilo")
	public Utente setProfilo(@RequestBody Utente utente) {
		System.out.println("sono in set profilo");
		if(DBManager.getInstance().utenteDAO().existsUser(utente.getEmail())) {
			Utente old = DBManager.getInstance().utenteDAO().findByPrimaryKey(utente.getEmail());
			DBManager.getInstance().utenteDAO().update(old, utente);
		}

		return utente;		
	}
	
	
	@PostMapping("Serviziologin")
	public String login(HttpSession session, @RequestBody Utente utente) throws Exception {
		
		if(DBManager.getInstance().utenteDAO().checkPassword(utente.getEmail(), utente.getPassword())) {		
			String username = DBManager.getInstance().utenteDAO().getUsername(utente.getEmail());
			    session.setAttribute("usernameLogged", utente.getEmail());
				session.setAttribute("username",username);
		}
		else {
			return "error";
		}							
			return "success";	
	}

}
