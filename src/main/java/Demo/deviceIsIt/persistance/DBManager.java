package Demo.deviceIsIt.persistance;

import Demo.deviceIsIt.persistance.dao.DeviceDAO;
import Demo.deviceIsIt.persistance.dao.UtenteDAO;
import Demo.deviceIsIt.persistance.dao.jdbc.ContenutoDAOJDBC;
import Demo.deviceIsIt.persistance.dao.jdbc.DeviceDAOJDBC;
import Demo.deviceIsIt.persistance.dao.jdbc.UtenteDAOJDBC;
import Demo.deviceIsIt.persistance.dao.ContenutoDAO;

public class DBManager {
	
	private static DBManager instance = null;
	static DBSource dataSource;
	
	static {
		try {
			Class.forName("org.postgresql.Driver");
			//questi vanno messi in file di configurazione!!!	
			dataSource=new DBSource("jdbc:postgresql://localhost:5432/deviceIsIt","postgres","postgres");
		} 
		catch (Exception e) {
			System.err.println("PostgresDAOFactory.class: failed to load MySQL JDBC driver\n"+e);
			e.printStackTrace();
		}
	}
	
	public static DBManager getInstance() {
		if (instance == null) {
			instance = new DBManager();
		}
		return instance;
	}
	
	private DBManager() {}
	
	public static DBSource getDataSource() {
		return dataSource;
	}
	
	public UtenteDAO utenteDAO() {
		return new UtenteDAOJDBC(dataSource);
	}
	
	public DeviceDAO deviceDAO() {
		return new DeviceDAOJDBC(dataSource);
	}
	
	public ContenutoDAO ContenutoDAO() {
		return new ContenutoDAOJDBC(dataSource);
	}

}
