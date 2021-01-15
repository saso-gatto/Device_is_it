package Demo.deviceIsIt.persistance.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
			st.setString(4, BCrypt.hashpw(utente.getPassword(), BCrypt.gensalt(12)));
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
					utente.setEmail(rs.getString("email"));
					utente.setNome(rs.getString("nome"));
					utente.setCognome(rs.getString("cognome"));
					utente.setPassword(rs.getString("password"));
					utente.setUsername(rs.getString("username"));
					utente.setNewsletter(rs.getBoolean("newsletter"));
					utente.setBloccato(rs.getBoolean("bloccato"));
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}	
		return utente;
	}
	

	@Override
	public String findUsername(String email) {
		String username = null;
		
		try {
			Connection conn = dbSource.getConnection();
			String query = "select username from utente where email=?";
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, email);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				username = rs.getString("username");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return username;
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

	@Override
	public boolean checkPassword(String email, String password) {
		String password_hash=null;
		
		try {
			Connection conn = dbSource.getConnection();
			String query = "select password from utente where email=?";
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, email);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				password_hash = rs.getString("password");
			}
			st.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return BCrypt.checkpw(password, password_hash);
	}
	

	@Override
	public String getUsername(String email) {
		String username=null;
		try {
			Connection conn = dbSource.getConnection();
			String query = "select utente.username from utente where email=?";
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, email);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				username = rs.getString("username");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return username;
	}
	
	@GetMapping("Contenuto")
	public String creaContenuto(HttpSession session, Model model, int tipologiaContenuto) {
		
		return "redirect:";
	}

}
