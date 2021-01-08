package Demo.deviceIsIt.persistance.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Demo.deviceIsIt.model.Commento;
import Demo.deviceIsIt.persistance.DBSource;
import Demo.deviceIsIt.persistance.dao.CommentoDAO;

public class CommentoDAOJDBC implements CommentoDAO {
	DBSource dbSource;
	
	public CommentoDAOJDBC(DBSource dbSource) {
		this.dbSource = dbSource;
	}
	
	
	@Override
	public void save(Commento commento) {
		Connection conn;
		try {
			conn = dbSource.getConnection();
			String query = "insert into commento values(?,?,?,?,?);"; // prendiamo la query
			PreparedStatement st = conn.prepareStatement(query); // creiamo lo statement
			st.setInt(1, commento.getIdCommento());
			st.setString(2, commento.getContenuto());
			st.setString(3, commento.getUtente());
			st.setString(4, commento.getData());
			st.setString(5, commento.getTesto());
			st.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	@Override
	public Commento findByPrimaryKey(int idCommento) {
		Commento commento=null;		
		try {
			Connection conn = dbSource.getConnection();
			String query = "select * from commento where idcommento=?";
			PreparedStatement st = conn.prepareStatement(query);
			st.setInt(1, idCommento);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				int idcommento = rs.getInt("idCommento");
				String contenuto = rs.getString("contenuto");
				String utente = rs.getString("utente");
				String data = rs.getString("data");
				String testo = rs.getString("testo");
				commento = new Commento();
				commento.setIdCommento(idcommento);
				commento.setContenuto(contenuto);
				commento.setUtente(utente);
				commento.setData(data);
				commento.setTesto(testo);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	return commento;

	}

	@Override
	public List<Commento> findAll() {
			List<Commento> commenti = new ArrayList<Commento>();
			
			try {
				Connection conn = dbSource.getConnection();
				String query = "select * from commento";
				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(query);
				while (rs.next()) {
					int idcommento = rs.getInt("idCommento");
					String contenuto = rs.getString("contenuto");
					String utente = rs.getString("utente");
					String data = rs.getString("data");
					String testo = rs.getString("testo");
					
					System.out.println(idcommento + contenuto + utente + data+testo);
					Commento commento = new Commento();
					commento.setIdCommento(idcommento);
					commento.setContenuto(contenuto);
					commento.setUtente(utente);
					commento.setData(data);
					commento.setTesto(testo);
					
					commenti.add(commento);
					System.out.println("creato");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return commenti;
	}

	@Override
	public void update(Commento commento) {
		Connection connection = null;
		try {
			connection = this.dbSource.getConnection();
			String update = "update commento SET contenuto = ?, utente = ?, data = ?, testo = ? WHERE idCommento=?";
			PreparedStatement st = connection.prepareStatement(update);
			st.setInt(1, commento.getIdCommento());
			st.setString(2, commento.getContenuto());
			st.setString(3, commento.getUtente());
			st.setString(4, commento.getData());
			st.setString(5, commento.getTesto());
			st.executeUpdate();
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
	public void delete(Commento commento) {
		Connection connection = null;
		try {
			connection = this.dbSource.getConnection();
			String delete = "delete FROM commento WHERE email = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, commento.getIdCommento());
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
