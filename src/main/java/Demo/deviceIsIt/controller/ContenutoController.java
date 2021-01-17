package Demo.deviceIsIt.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
		model.addAttribute(cont);

		List <Commento> commenti = DBManager.getInstance().CommentoDAO().findByContenuto(id);
		
		for (Commento c: commenti) {
			c.setutente(DBManager.getInstance().utenteDAO().findUsername(c.getutente()));
		}
		
		model.addAttribute("listaCommenti",commenti);
		return "ContenutoRichiesto";
	}
	
	@GetMapping("newRecensione")
	public String newRecensioneSmartphone(HttpSession session, Model model) {
		
		int tipoContenuto= 2;
		String contenuto= "Nuova Recensione";
		
		model.addAttribute("contenuto", contenuto );
		model.addAttribute("tipoContenuto", tipoContenuto);
		
		return "creaContenuto";
	}
	
	@GetMapping("newDevice")
	public String newSchedaTecnicaSmartphone(HttpSession session, Model model) {
		
		String contenuto= "Nuovo Device";
		
		model.addAttribute("contenuto", contenuto );
		
		return "creaDevice";
	}
		
	
	@GetMapping("newArticolo")
	public String newArticolo(HttpSession session, Model model) {
		
		int tipoContenuto= 1;
		String contenuto= "Nuovo Articolo";
		model.addAttribute("contenuto", contenuto );
		model.addAttribute("tipoContenuto", tipoContenuto);
	
		return "creaContenuto";
	}
	
	
}
