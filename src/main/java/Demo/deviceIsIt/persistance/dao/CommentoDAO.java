package Demo.deviceIsIt.persistance.dao;

import java.util.List;

import Demo.deviceIsIt.model.Commento;

public interface CommentoDAO {

	public void save(Commento c);  // Create
	public Commento findByPrimaryKey(int idCommento);     // Retrieve
	public List<Commento> findAll();       
	public void update(Commento c); //Update
	public void delete(Commento c); //Delete	
	
}
