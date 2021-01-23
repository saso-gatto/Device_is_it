package Demo.deviceIsIt.persistance.dao;

import java.util.List;

import Demo.deviceIsIt.model.Device;
import Demo.deviceIsIt.model.ListaPreferiti;

public interface ListaPreferitiDAO {

	public void save(Device device);  // Create
	public Device findByPrimaryKey(Integer idDevice);     // Retrieve
	public List<Device> findAll();       
	public void update(Device device); //Update
	public void delete(int  idDevice);
}
