package Demo.deviceIsIt.persistance.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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

			String query = "insert into utente values(?,?,?,?,?,?,?);"; // prendiamo la query
			PreparedStatement st = conn.prepareStatement(query); // creiamo lo statement
			st.setString(1, utente.getEmail());
			st.setString(2, utente.getNome());
			st.setString(3, utente.getCognome());
			st.setString(4, utente.getPassword());
			st.setString(5, utente.getUsername());
			st.setBoolean(6, utente.isNewsletter());
			st.setBoolean(7, utente.isBloccato());
			st.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Utente findByPrimaryKey(String email) {
		Utente utente = null;
			
			try {
				Connection conn = dbSource.getConnection();
				String query = "select * from utente where email=?";
				PreparedStatement st = conn.prepareStatement(query);
				st.setString(1, email);
				ResultSet rs = st.executeQuery();
				if (rs.next()) {
					String uemail = rs.getString("email");
					String nome = rs.getString("nome");
					String cognome = rs.getString("cognome");
					String password = rs.getString("password");
					String username = rs.getString("username");
					boolean newsletter = rs.getBoolean("newsletter");
					boolean bloccato = rs.getBoolean("bloccato");
					
					utente.setEmail(uemail);
					utente.setNome(nome);
					utente.setCognome(cognome);
					utente.setPassword(password);
					utente.setUsername(username);
					utente.setNewsletter(newsletter);
					utente.setBloccato(bloccato);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}	
		return utente;
	}

	@Override
	public List<Utente> findAll() {
		List<Utente> utenti = new ArrayList<Utente>();
			
			try {
				Connection conn = dbSource.getConnection();
				String query = "select * from utente";
				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(query);
				while (rs.next()) {
					String email = rs.getString("email");
					String nome = rs.getString("nome");
					String cognome = rs.getString("cognome");
					String password = rs.getString("password");
					String username = rs.getString("username");
					boolean newsletter = rs.getBoolean("newsletter");
					boolean bloccato = rs.getBoolean("bloccato");
					
					System.out.println(email + nome + cognome + password);
					Utente utente = new Utente();
					
					utente.setEmail(email);
					utente.setNome(nome);
					utente.setCognome(cognome);
					utente.setPassword(password);
					utente.setUsername(username);
					utente.setNewsletter(newsletter);
					utente.setBloccato(bloccato);
					
					utenti.add(utente);
					System.out.println("creato");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return utenti;
	}

	@Override
	public void update(Utente old, Utente newu) {////////////to check
		
		Connection connection = null;
		
		try {
			connection = this.dbSource.getConnection();
			String update = "update utente SET nome = ?, cognome = ?, password = ?, username = ? WHERE email=?";
			PreparedStatement statement = connection.prepareStatement(update);
			if(!newu.getNome().equals("")) // !!!!!!! nb: ricorda di controllare utentiController
				statement.setString(1, newu.getNome());
			if(!newu.getCognome().equals(""))
				statement.setString(2, newu.getCognome());
			if(!newu.getPassword().equals(""))
				statement.setString(3, newu.getPassword());
			if(!newu.getUsername().equals(""))
				statement.setString(4, newu.getUsername());
			
			statement.setString(5, old.getEmail());
			statement.executeUpdate();
			
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}
	}

	@Override
	public void delete(Utente utente) { 
		Connection connection = null;
		
		try {
			connection = this.dbSource.getConnection();
			String delete = "delete FROM utente WHERE email = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, utente.getEmail());
			statement.executeUpdate();
			
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}
	}

}
