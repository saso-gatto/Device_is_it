package Demo.deviceIsIt.persistance.dao.jdbc;

import java.util.ArrayList;
import java.util.List;

import Demo.deviceIsIt.model.Device;
import Demo.deviceIsIt.persistance.DBSource;
import Demo.deviceIsIt.persistance.dao.ListaPreferitiDAO;

public class ListaPreferitiDAOJDBC implements ListaPreferitiDAO {
	DBSource dbSource;
	
	public ListaPreferitiDAOJDBC(DBSource dbSource) {
		this.dbSource = dbSource;
	}

	@Override
	public void savePreferito(Integer idDevice) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Device> getPreferiti(String email) {
		List<Device> preferiti= new ArrayList<Device>();
		return preferiti;
	}

	@Override
	public void deletePreferito(String email, Integer idDevice) {
		// TODO Auto-generated method stub
		
	}
	
	

}
