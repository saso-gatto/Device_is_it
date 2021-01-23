package Demo.deviceIsIt.model;

import java.util.List;

public class ListaPreferiti {
	
	public List<Device> preferiti;
	
	public List<Device> getListaPreferiti() {
		return preferiti;
	}

	public void rimuoviDevice(Device d) {
		preferiti.remove(d);
	}
	
	public void aggiungiDevice(Device d) {
		preferiti.add(d);
	}
	
}
