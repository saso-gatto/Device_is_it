package Demo.deviceIsIt.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Demo.deviceIsIt.model.Commento;
import Demo.deviceIsIt.model.Contenuto;
import Demo.deviceIsIt.persistance.DBManager;

@Controller
public class ContenutoController {
	
	@PostMapping("Contenuto")
	public String getContenuto(HttpSession session, Model model, @RequestParam Integer id) {
		
		Contenuto cont = DBManager.getInstance().ContenutoDAO().findByPrimaryKey(id);
		
		List <Commento> commenti = DBManager.getInstance().CommentoDAO().findByContenuto(id);
		model.addAttribute(cont);
		return "ContenutoRichiesto";
	}
}
