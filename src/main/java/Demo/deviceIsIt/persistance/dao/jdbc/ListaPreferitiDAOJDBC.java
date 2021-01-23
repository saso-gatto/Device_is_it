package Demo.deviceIsIt.persistance.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.security.crypto.bcrypt.BCrypt;

import Demo.deviceIsIt.model.Device;
import Demo.deviceIsIt.model.Utente;
import Demo.deviceIsIt.persistance.DBSource;
import Demo.deviceIsIt.persistance.dao.ListaPreferitiDAO;

public class ListaPreferitiDAOJDBC implements ListaPreferitiDAO {
	DBSource dbSource;
	
	public ListaPreferitiDAOJDBC(DBSource dbSource) {
		this.dbSource = dbSource;
	}

	@Override
	public boolean savePreferito(String utente, int idDevice) {
		Connection conn;

		try {
			conn = dbSource.getConnection();
			String query = "insert into listapreferiti values(?,?);"; // prendiamo la query
			PreparedStatement st = conn.prepareStatement(query); // creiamo lo statement
			st.setString(1, utente);
			st.setInt(2, idDevice);
		} catch (SQLException e) {
			  return false;
		}
		return true;
	}

	@Override
	public List<Device> getPreferiti(String email) {
		List<Device> preferiti = new ArrayList<Device>();
		
		try {
			Connection conn = dbSource.getConnection();
			String query = "select device.* from listapreferiti,device where listapreferiti.utente=? and listapreferiti.device=device.id;";
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
				Device device = new Device();
				device.setIdDevice(rs.getInt("id"));				
				device.setModello(rs.getString("modello"));
				device.setMarca(rs.getString("marca"));
				device.setTipoDevice(rs.getInt("tipodevice"));
				device.setMemoria(rs.getString("memoria"));
				device.setRam(rs.getString("ram"));
				device.setDisplay(rs.getString("display"));
				device.setBatteria(rs.getString("batteria"));
				device.setFotocamera(rs.getString("fotocamera"));
				device.setCPU(rs.getString("cpu"));
				device.setPeso(rs.getString("peso"));
				device.setOs(rs.getString("os"));
				device.setImg(rs.getString("img"));
				
				preferiti.add(device);
				System.out.println("creato");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	return preferiti;
	}

	@Override
	public void deletePreferito(String email, Integer idDevice) {
		Connection connection = null;
		try {
			connection = this.dbSource.getConnection();
			String delete = "delete FROM listapreferiti WHERE utente=? and device=?;";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setString(1, email);
			statement.setInt(2, idDevice);
			statement.executeUpdate();
			statement.close();
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
