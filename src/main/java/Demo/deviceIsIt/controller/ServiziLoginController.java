package Demo.deviceIsIt.controller;


import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import Demo.deviceIsIt.model.Mail;
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
	public String setProfilo(@RequestBody Utente utente) {
	
		try {
			if(DBManager.getInstance().utenteDAO().existsUser(utente.getEmail())) {
				Utente old = DBManager.getInstance().utenteDAO().findByPrimaryKey(utente.getEmail());
				
				if(utente.getPassword()!=null)
					DBManager.getInstance().utenteDAO().update(old, utente);
				else
					DBManager.getInstance().utenteDAO().updateWithoutPsw(old, utente);			
			}
		} catch (Exception e) {
			return "error";
		}
		return "success";		
	}
	
	
	@PostMapping("Serviziologin")
	public String login(HttpSession session, @RequestBody Utente utente) {
		if (!DBManager.getInstance().utenteDAO().existsUser(utente.getEmail()))
			return "nonRegistrato";
		
		if(DBManager.getInstance().utenteDAO().checkPassword(utente.getEmail(), utente.getPassword()) && 
				!(DBManager.getInstance().utenteDAO().checkBloccato(utente.getEmail()))) {	
			
			String username = DBManager.getInstance().utenteDAO().getUsername(utente.getEmail());
			    session.setAttribute("usernameLogged", utente.getEmail());
				session.setAttribute("username",username);
				return "success";
		}
		else {
			return "error";
		}							

	}

	
	@PostMapping("ServizioRegistrazione")
	public String registrazione(HttpSession session, @RequestBody Utente utente) {
		
		if (DBManager.getInstance().utenteDAO().existsUsername(utente.getUsername())) {
			System.out.println("Username già  presente");
			return "error";
		}
		else if (DBManager.getInstance().utenteDAO().existsUser(utente.getEmail())) {
			System.out.println("email già  presente");
			return "error";
		}
		else {
			DBManager.getInstance().utenteDAO().save(utente);
			session.setAttribute("usernameLogged", utente.getEmail());
			session.setAttribute("username",utente.getUsername());
			return "success";
		}
	}
	

	@PostMapping("RecuperoPassword")
	public String recuperoPasswor(HttpSession session, @RequestBody Utente utente){
		
		if(DBManager.getInstance().utenteDAO().existsUser(utente.getEmail())){
			try {			
				String nuovaPassword= Mail.getInstance().ResetPassword(utente.getEmail());
				DBManager.getInstance().utenteDAO().setPassword(utente.getEmail(), nuovaPassword);
			} catch (Exception e) {			
				e.printStackTrace();
			}
		}
		return "success";	
	}
	
	
	
}
