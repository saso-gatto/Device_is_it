package Demo.deviceIsIt.controller;

import java.util.List;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import Demo.deviceIsIt.model.Commento;
import Demo.deviceIsIt.model.Contenuto;
import Demo.deviceIsIt.model.Device;
import Demo.deviceIsIt.persistance.DBManager;

@RestController
public class ServiziContenutoController {
	

	@PostMapping("AggiungiCommento")
	public Commento aggiungiCommento(@RequestBody Commento commento  ) {
		
		DBManager.getInstance().CommentoDAO().save(commento);				
		return commento;
	}
	
	
	@PostMapping("AggiungiContenuto")
	public Contenuto aggiungiContenuto(@RequestBody Contenuto contenuto) {
		
		if(contenuto.getDevice()==0)
			DBManager.getInstance().ContenutoDAO().saveWithoutDevice(contenuto);
		else
			DBManager.getInstance().ContenutoDAO().save(contenuto);				
		return contenuto;
	}
	
	@PostMapping("ModificaContenuto")
	public Contenuto setContenuto(@RequestBody Contenuto contenuto) {
	
		if(contenuto.getDevice()==0)
			DBManager.getInstance().ContenutoDAO().updateWithoutDevice(contenuto);
		else
			DBManager.getInstance().ContenutoDAO().update(contenuto);				
		return contenuto;
	}
	
	
	@PostMapping("AggiungiDevice")
	public Device aggiungiDevice(@RequestBody Device device) {
		
		DBManager.getInstance().deviceDAO().save(device);				
		return device;
	}
	
	@PostMapping("ModificaDevice")
	public Device setDevice(@RequestBody Device device) {
	
		DBManager.getInstance().deviceDAO().update(device);					
		return device;
	}
	
	@PostMapping("findModello")
	public List<Device> findModelli(@RequestBody Device device) {
		
		List<Device> modelli= DBManager.getInstance().deviceDAO().findByModello(device.getModello());
		return modelli;
	}
	
	
	
}
