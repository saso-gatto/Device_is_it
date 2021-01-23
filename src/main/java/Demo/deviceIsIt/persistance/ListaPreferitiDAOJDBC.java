package Demo.deviceIsIt.persistance;

import java.util.List;

import Demo.deviceIsIt.model.Device;
import Demo.deviceIsIt.persistance.dao.ListaPreferitiDAO;

public class ListaPreferitiDAOJDBC implements ListaPreferitiDAO {
	DBSource dbSource;
	
	public ListaPreferitiDAOJDBC(DBSource dbSource) {
		this.dbSource = dbSource;
	}
	

	@Override
	public void save(Device device) {
		// TODO Auto-generated method stub

	}

	@Override
	public Device findByPrimaryKey(Integer idDevice) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Device> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Device device) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int idDevice) {
		// TODO Auto-generated method stub

	}

}
