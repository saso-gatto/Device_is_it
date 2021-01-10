package Demo.deviceIsIt.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import Demo.deviceIsIt.model.Contenuto;
import Demo.deviceIsIt.model.Device;
import Demo.deviceIsIt.persistance.DBManager;

@Controller
public class NavBarController {
	
	@GetMapping("/index")	//Metodo che intercetta un href su index e carica la pagina
	public String getHome(HttpSession session, Model model) {
		List<Contenuto> contenuti= new ArrayList<Contenuto>();		
		contenuti=DBManager.getInstance().ContenutoDAO().findLastThree();			
		model.addAttribute("ultimeTre",contenuti);	
				
		System.out.println("lista device size: "+contenuti.size());
				
		return "index";
	}
	
	@GetMapping("/schedeTecniche")	//Metodo che intercetta un href su index e carica la pagina
	public String dammiDevice(HttpSession session, Model model) {
		
		List<Device> listadevice= new ArrayList<Device>();		
		listadevice=DBManager.getInstance().deviceDAO().findAll();		
		model.addAttribute("listaDevice",listadevice);	
				
	
		return "specs";
		
	}
	
	@GetMapping("/news")	//Metodo che intercetta un href su index e carica la pagina
	public String dammiNews(HttpSession session, Model model) {
		
		List<Contenuto> contenuti= new ArrayList<Contenuto>();		
		contenuti=DBManager.getInstance().ContenutoDAO().findAll();			
		model.addAttribute("listaContenuto",contenuti);	
				
		
		return "news";
		
	}
	
	@GetMapping("/recensioniPc")	//Metodo che intercetta un href su index e carica la pagina
	public String dammiRecensioniPc(HttpSession session, Model model) {
		
		List<Contenuto> contenuti= new ArrayList<Contenuto>();		
		contenuti=DBManager.getInstance().ContenutoDAO().findRecensioniPc();
		model.addAttribute("listaContenuto",contenuti);	
		
		System.out.println("numero recensioni computer: "+contenuti.size());
		return "RecensioniComputer";
	}
	

	@GetMapping("/recensioniSmartphone")	//Metodo che intercetta un href su index e carica la pagina
	public String dammiRecensioniSmartphone(HttpSession session, Model model) {
		
		List<Contenuto> contenuti= new ArrayList<Contenuto>();
		contenuti=DBManager.getInstance().ContenutoDAO().findRecensioniSmartphone();
		model.addAttribute("listaContenuto",contenuti);	
		
		System.out.println("numero recensioni smartphone: "+contenuti.size());
		return "RecensioniSmartphone";
	}
	

}