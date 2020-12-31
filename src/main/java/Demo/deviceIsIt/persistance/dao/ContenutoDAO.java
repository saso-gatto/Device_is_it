package Demo.deviceIsIt.persistance.dao;

import java.util.List;

import Demo.deviceIsIt.model.Contenuto;

public interface ContenutoDAO {

	public void save(Contenuto c);  // Create  == insert/store
	public Contenuto findByPrimaryKey(int idContenuto);     // Retrieve  == select stud
	public List<Contenuto> findAll();     //  select*
	public void update(Contenuto c); //Update
	public void delete(Contenuto c); //Delete	

	
}
