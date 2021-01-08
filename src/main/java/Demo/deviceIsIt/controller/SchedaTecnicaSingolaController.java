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
	public String dammiDeviceByPrimaryKey(HttpSession session, Model model, @RequestParam String idDevice ) {		
		
//		Device device=DBManager.getInstance().deviceDAO().findByPrimaryKey(idDevice);	
		
		System.out.println("idDevice: "+idDevice);
		System.out.println("funfaaaaaaaaaa");
		
		return "schedaTecnicaSingola";
		
	}
}
