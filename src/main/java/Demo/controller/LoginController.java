package Demo.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@PostMapping("doLogin")	
	public String login(HttpSession session, @RequestParam String username, @RequestParam String password) {
			System.out.println(username+ " "+password);
					
			if(loginOk(username, password)) {
				session.setAttribute("usernameLogged", username);
//				return "loginSuccess";
				return "index";
			}				
			else
				return "loginError";
	}
	
	private boolean loginOk( String username, String password) {
		if(username.equals("admin") && password.equals("admin"))
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