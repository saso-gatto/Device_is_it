package Demo.deviceIsIt.persistance.dao.jdbc;

import Demo.deviceIsIt.persistance.DBSource;
import Demo.deviceIsIt.persistance.dao.UtenteDAO;

public class UtenteDAOJDBC implements UtenteDAO {
	
	DBSource dbSource;
	
	public UtenteDAOJDBC(DBSource dbSource) {
		this.dbSource = dbSource;
	}

}
