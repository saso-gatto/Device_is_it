package Demo.deviceIsIt.persistance.dao;

import java.util.List;

import Demo.deviceIsIt.model.Device;

public interface ListaPreferitiDAO {

	public void savePreferito(Integer idDevice);  
	public List<Device> getPreferiti(String email);  
	public void deletePreferito(String email, Integer idDevice);
}
