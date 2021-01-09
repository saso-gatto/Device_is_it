package Demo.deviceIsIt.persistance.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Demo.deviceIsIt.model.Device;
import Demo.deviceIsIt.persistance.DBSource;
import Demo.deviceIsIt.persistance.dao.DeviceDAO;

public class DeviceDAOJDBC implements DeviceDAO {
	DBSource dbSource;
	
	public DeviceDAOJDBC(DBSource dbSource) {
		this.dbSource= dbSource;
	}
	
	@Override
	public void save(Device device) {
		Connection conn;
		try {
			conn = dbSource.getConnection();
			String query = "insert into device values(?,?,?,?,?,?,?,?,?,?,?,?,?);"; // prendiamo la query
			PreparedStatement st = conn.prepareStatement(query); // creiamo lo statement
			st.setInt(1, device.getIdDevice());
			st.setString(2, device.getModello());
			st.setString(3, device.getMarca());
			st.setInt(4, device.getTipoDevice());
			st.setString(5, device.getMemoria());
			st.setString(6, device.getRam());
			st.setString(7, device.getDisplay());
			st.setString(8, device.getBatteria());
			st.setString(9, device.getFotocamera());
			st.setString(10, device.getCPU());
			st.setString(11, device.getPeso());
			st.setString(12, device.getOs());
			st.setString(13, device.getImg());
			st.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Device findByPrimaryKey(int idDevice) {
		Device device = null;
		try {
			Connection con = dbSource.getConnection();
			String query = "select * from device where id_Device=?";
			PreparedStatement st = con.prepareStatement(query);
			st.setInt(1, idDevice);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				device = new Device();
				device.setIdDevice(rs.getInt("id_Device"));				
				device.setModello(rs.getString("modello"));
				device.setMarca(rs.getString("marca"));
				device.setTipoDevice(rs.getInt("tipoDevice"));
				device.setMemoria(rs.getString("memoria"));
				device.setRam(rs.getString("ram"));
				device.setDisplay(rs.getString("display"));
				device.setBatteria(rs.getString("batteria"));
				device.setFotocamera(rs.getString("fotocamera"));
				device.setCPU(rs.getString("cpu"));
				device.setPeso(rs.getString("peso"));
				device.setOs(rs.getString("os"));
				device.setImg(rs.getString("img"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return device;
	}

	@Override
	public List<Device> findAll() {
		List<Device> devices = new ArrayList <Device>();
		try {
			Connection con = dbSource.getConnection();
			String query = "select * from device";
			PreparedStatement st = con.prepareStatement(query);
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				Device device = new Device();
				device.setIdDevice(rs.getInt("id_Device"));				
				device.setModello(rs.getString("modello"));
				device.setMarca(rs.getString("marca"));
				device.setTipoDevice(rs.getInt("tipoDevice"));
				device.setMemoria(rs.getString("memoria"));
				device.setRam(rs.getString("ram"));
				device.setDisplay(rs.getString("display"));
				device.setBatteria(rs.getString("batteria"));
				device.setFotocamera(rs.getString("fotocamera"));
				device.setCPU(rs.getString("cpu"));
				device.setPeso(rs.getString("peso"));
				device.setOs(rs.getString("os"));
				device.setImg(rs.getString("img"));
				devices.add(device);
					
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return devices;
	}

	@Override
	public void update(Device device) {
		Connection connection = null;
		try {
			connection = this.dbSource.getConnection();
			String update = "update device SET modello = ?, marca = ?, tipoDevice = ?, memoria = ?, ram=?, display = ?, batteria = ?, fotocamera = ?, cpu = ?, peso = ?, os = ?, img = ?, WHERE id_Device=?";
			PreparedStatement st = connection.prepareStatement(update);
			st.setInt(1, device.getIdDevice());
			st.setString(2, device.getModello());
			st.setString(3, device.getMarca());
			st.setInt(4, device.getTipoDevice());
			st.setString(5, device.getMemoria());
			st.setString(6, device.getRam());
			st.setString(7, device.getDisplay());
			st.setString(8, device.getBatteria());
			st.setString(9, device.getFotocamera());
			st.setString(10, device.getCPU());
			st.setString(11, device.getPeso());
			st.setString(12, device.getOs());
			st.setString(13, device.getImg());
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
	public void delete(Device device) {
		Connection connection = null;
		try {
			connection = this.dbSource.getConnection();
			String delete = "delete FROM device WHERE id_Device = ? ";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.setInt(1, device.getIdDevice());
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
