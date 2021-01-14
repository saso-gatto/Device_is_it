package Demo.deviceIsIt.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Demo.deviceIsIt.persistance.DBManager;

@Controller // identifica la classe come Servlet
public class LoginController {

	@PostMapping("login")	
	public String login(HttpSession session, @RequestParam String email, @RequestParam String password) {
			
		String checkPassword= DBManager.getInstance().utenteDAO().findPassword(email);
		String username = DBManager.getInstance().utenteDAO().getUsername(email);
		
		//System.out.println("password db:"+checkPassword+"  password: "+password);
			
		if(password.equals(checkPassword)) {
				session.setAttribute("usernameLogged", email);
				session.setAttribute("username",username);
				System.out.println("password corretta");
			}			
			return "redirect:/";			
	}
	
	
	@GetMapping("doLogout")	
	public String logout(HttpSession session) {
			session.invalidate();
//			return "logoutSuccess";
			return "index";
	}
	
	
	
}