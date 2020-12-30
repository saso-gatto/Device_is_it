package Demo.deviceIsIt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Home {
	
	@GetMapping("/index")	//Metodo che intercetta una href su index e carica la pagina
	public String getHome() {
		return "index";
	}

}
