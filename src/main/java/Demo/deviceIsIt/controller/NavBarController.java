package Demo.deviceIsIt.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Demo.deviceIsIt.model.Contenuto;
import Demo.deviceIsIt.model.Device;
import Demo.deviceIsIt.persistance.DBManager;

@Controller
public class NavBarController {
	
	@GetMapping("/index")	//Metodo che intercetta un href su index e carica la pagina
	public String getHome(HttpSession session, Model model) {
		
		List<Contenuto> recensioni= new ArrayList<Contenuto>();		
		recensioni=DBManager.getInstance().ContenutoDAO().findLastThreeRecensioni();			
		model.addAttribute("ultimeTreRecensioni",recensioni);	
		
		List<Contenuto> articoli= new ArrayList<Contenuto>();		
		articoli=DBManager.getInstance().ContenutoDAO().findLastThreeArticoli();			
		model.addAttribute("ultimiTreArticoli",articoli);	
		
		return "index";
	}
	
	@GetMapping("")	//Metodo che intercetta un href su index e carica la pagina
	public String getHomeLoad(HttpSession session, Model model) {
		
		List<Contenuto> recensioni= new ArrayList<Contenuto>();		
		recensioni=DBManager.getInstance().ContenutoDAO().findLastThreeRecensioni();			
		model.addAttribute("ultimeTreRecensioni",recensioni);	
		
		List<Contenuto> articoli= new ArrayList<Contenuto>();		
		articoli=DBManager.getInstance().ContenutoDAO().findLastThreeArticoli();			
		model.addAttribute("ultimiTreArticoli",articoli);	
				
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
		contenuti=DBManager.getInstance().ContenutoDAO().findArticoli();		
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
	
	@PostMapping("cerca")	
	public String risultatiRicerca(HttpSession session, Model model, @RequestParam String daCercare) {
		
		String cerca="%"+daCercare+"%";
		
		List<Contenuto> Articoli= new ArrayList<Contenuto>();
		List<Contenuto> Recensioni= new ArrayList<Contenuto>();
		List<Device> Smartphone= new ArrayList<Device>();
		List<Device> Computer= new ArrayList<Device>();
		
		Articoli=DBManager.getInstance().ContenutoDAO().researchResultArticoli(cerca);
		Recensioni=DBManager.getInstance().ContenutoDAO().researchResultRecensioni(cerca);
		Smartphone=DBManager.getInstance().deviceDAO().researchResultSmartphone(cerca);
		Computer=DBManager.getInstance().deviceDAO().researchResultComputer(cerca);
	
		model.addAttribute("listaArticoli",Articoli);	
		model.addAttribute("listaRecensioni",Recensioni);	
		model.addAttribute("listaSmartphone",Smartphone);	
		model.addAttribute("listaComputer",Computer);	

		return "risultatiRicerca";			
	}
	

}
