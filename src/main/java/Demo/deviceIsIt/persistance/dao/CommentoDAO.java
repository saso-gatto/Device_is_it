package Demo.deviceIsIt.persistance.dao;

import java.util.List;

import Demo.deviceIsIt.model.Commento;

public interface CommentoDAO {

	public void save(Commento c);  // Create
	public Commento findByPrimaryKey(int idcommento);     // Retrieve
	public List<Commento> findAll();    
	public List<Commento> findByContenuto(int idcontenuto);   
	public void update(Commento c); //Update
	public void delete(Commento c); //Delete	
	public void addmipiace(int idcommento);
	
}
