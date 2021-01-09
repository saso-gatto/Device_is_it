package Demo.deviceIsIt.persistance.dao.jdbc;

import java.util.List;
import Demo.deviceIsIt.model.Contenuto;
import Demo.deviceIsIt.persistance.DBSource;
import Demo.deviceIsIt.persistance.dao.ContenutoDAO;

public class ContenutoDAOJDBC implements ContenutoDAO {

	DBSource dbSource;
	
	public ContenutoDAOJDBC(DBSource dbSource) {
		this.dbSource= dbSource;
	}

	@Override
	public void save(Contenuto c) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Contenuto findByPrimaryKey(int idContenuto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Contenuto> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Contenuto c) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Contenuto c) {
		// TODO Auto-generated method stub
		
	}
	


}
