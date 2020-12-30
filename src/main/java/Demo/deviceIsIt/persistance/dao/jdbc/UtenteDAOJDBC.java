package Demo.deviceIsIt.persistance.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import Demo.deviceIsIt.model.Utente;
import Demo.deviceIsIt.persistance.DBSource;
import Demo.deviceIsIt.persistance.dao.UtenteDAO;

public class UtenteDAOJDBC implements UtenteDAO {

	DBSource dbSource;

	public UtenteDAOJDBC(DBSource dbSource) {
		this.dbSource = dbSource;
	}

	@Override
	public void save(Utente utente) {

		Connection conn;

		try {
			conn = dbSource.getConnection();

			String query = "insert into utente values(?,?,?,?);"; // prendiamo la query
			PreparedStatement st = conn.prepareStatement(query); // creiamo lo statement
			st.setString(1, utente.getEmail());
			st.setString(2, utente.getNome());
			st.setString(3, utente.getCognome());
			st.setString(4, utente.getPassword());
			st.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public Utente findByPrimaryKey(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Utente> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Utente utente) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Utente utente) {
		// TODO Auto-generated method stub
		
	}

	

}
