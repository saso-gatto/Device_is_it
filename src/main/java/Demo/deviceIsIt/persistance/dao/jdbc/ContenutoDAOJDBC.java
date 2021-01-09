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
				contenuto.setTesto(rs.getString("cpu"));
				contenuto.setTitolo(rs.getString("cpu"));																								
				contenuti.add(contenuto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return contenuti;
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
