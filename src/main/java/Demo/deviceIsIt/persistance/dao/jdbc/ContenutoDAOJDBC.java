package Demo.deviceIsIt.persistance.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
	public void save(Contenuto contenuto) {
		Connection conn;

		try {
			conn = dbSource.getConnection();

			String query = "insert into contenuto values(?,?,?,?,?,?,?);"; // prendiamo la query
			PreparedStatement st = conn.prepareStatement(query); // creiamo lo statement
			st.setInt(1, contenuto.getIdContenuto());
			st.setString(2, contenuto.getData());
			st.setInt(3, contenuto.getTipo());
			st.setInt(4, contenuto.getDevice());
			st.setString(5, contenuto.getTesto());
			st.setString(6, contenuto.getTitolo());
			st.setString(7, contenuto.getImg());
			st.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Contenuto findByPrimaryKey(int idContenuto) {
		Contenuto contenuto = null;
		
		try {
			Connection conn = dbSource.getConnection();
			String query = "select * from contenuto where idContenuto=?";
			PreparedStatement st = conn.prepareStatement(query);
			st.setInt(1, idContenuto);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				int idCont = rs.getInt("idContenuto");
				String data = rs.getString("data");
				int tipo = rs.getInt("tipologia");
				int device = rs.getInt("device");
				String testo = rs.getString("testo");
				String titolo = rs.getString("titolo");
				String img = rs.getString("img");
				
				contenuto.setIdContenuto(idCont);
				contenuto.setData(data);
				contenuto.setTipo(tipo);
				contenuto.setDevice(device);
				contenuto.setTesto(testo);
				contenuto.setTitolo(titolo);
				contenuto.setImg(img);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	return contenuto;
	}

	@Override
	public List<Contenuto> findAll() {
		List<Contenuto> contenuti = new ArrayList <Contenuto>();
		try {
			Connection con = dbSource.getConnection();
			String query = "select * from contenuto";
			PreparedStatement st = con.prepareStatement(query);
			ResultSet rs = st.executeQuery();
			while (rs.next()) {				
				Contenuto contenuto= new Contenuto();						
				contenuto.setIdContenuto(rs.getInt("idContenuto"));		
				contenuto.setData(rs.getString("data"));
				contenuto.setTipo(rs.getInt("tipologia"));
				contenuto.setDevice(rs.getInt("device"));
				contenuto.setTesto(rs.getString("testo"));
				contenuto.setTitolo(rs.getString("titolo"));	
				contenuto.setImg(rs.getString("img"));
				contenuti.add(contenuto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return contenuti;
	}

	@Override
	public void update(Contenuto c) {
		Connection connection = null;
		
		try {
			connection = this.dbSource.getConnection();
			String update = "update contenuto SET data=?, tipologia=?, device=?, testo=?, titolo=?, img=? WHERE email=?";
			PreparedStatement statement = connection.prepareStatement(update);
			statement.setString(1, c.getData());
			statement.setInt(2, c.getTipo());
			statement.setInt(3, c.getDevice());
			statement.setString(4, c.getTesto());
			statement.setString(5, c.getTitolo());
			statement.setString(6, c.getImg());
			
			statement.setInt(7, c.getIdContenuto());
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
	public void delete(Contenuto c) {
		Connection connection = null;
		
		try {
			connection = this.dbSource.getConnection();
			String delete = "delete FROM contenuto WHERE idContenuto=? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, c.getIdContenuto());
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
