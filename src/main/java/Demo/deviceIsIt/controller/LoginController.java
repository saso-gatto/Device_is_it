package Demo.deviceIsIt.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller // identifica la classe come Servlet
public class LoginController {

	@PostMapping("login")	
	public String login(HttpSession session, @RequestParam String email, @RequestParam String password) {
			
		System.out.println(email+" "+password);
					
//			if(loginOk(email, password)) {
				session.setAttribute("usernameLogged", email);
//			}	
			return "index";			
	}
	
	private boolean loginOk( String username, String password) {
		if(username.equals("admin@admin.it") && password.equals("admin"))
			return true;
		return false;
	}
	
	
	@GetMapping("doLogout")	
	public String logout(HttpSession session) {
			session.invalidate();
//			return "logoutSuccess";
			return "index";
	}
	
}