package Demo.deviceIsIt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Demo.deviceIsIt.model.Device;
import Demo.deviceIsIt.persistance.DBManager;

@Controller
public class SchedaTecnicaSingolaController {

	
	@PostMapping("/schedaTecnica")	//Metodo che intercetta una href su index e carica la pagina
	public String dammiDeviceByPrimaryKey(HttpSession session, Model model, @RequestParam Integer idDevice ) {		
		
		Device device=DBManager.getInstance().deviceDAO().findByPrimaryKey(idDevice);	
		
//		model.addAttribute("device",device);
		
//		model.addAttribute("modello",device.getModello());			
//		model.addAttribute("marca",device.getMarca());	
//		model.addAttribute("memoria",device.getMemoria());	
//		model.addAttribute("ram",device.getRam());	
//		model.addAttribute("display",device.getDisplay());	
//		model.addAttribute("batteria",device.getBatteria());	
//		model.addAttribute("fotocamera",device.getFotocamera());	
//		model.addAttribute("cpu",device.getCPU());	
//		model.addAttribute("peso",device.getPeso());	
//		model.addAttribute("os",device.getOs());	
		
		return "SchedaTecnicaSingola";
		
	}
}
