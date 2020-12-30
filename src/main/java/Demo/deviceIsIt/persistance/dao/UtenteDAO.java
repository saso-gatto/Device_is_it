package Demo.deviceIsIt.persistance.dao;

import java.util.ArrayList;

import Demo.deviceIsIt.model.Utente;

public interface UtenteDAO {

	public void save(Utente utente);  // Create  == insert/store
	public Utente findByPrimaryKey(String email);     // Retrieve  == select stud
	public ArrayList<Utente> findAll();     //  select*
	public void update(Utente utente); //Update
	public void delete(Utente utente); //Delete	
}
