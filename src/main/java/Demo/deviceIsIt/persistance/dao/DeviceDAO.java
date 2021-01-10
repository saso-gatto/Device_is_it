package Demo.deviceIsIt.persistance.dao;

import java.util.List;

import Demo.deviceIsIt.model.Device;

public interface DeviceDAO {
	
	public void save(Device device);  // Create
	public Device findByPrimaryKey(Integer idDevice);     // Retrieve
	public List<Device> findAll();       
	public void update(Device device); //Update
	public void delete(Device device); //Delete	
	public List<Device> findByTipology(Integer tipologia);

}