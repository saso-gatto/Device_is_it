package Demo.deviceIsIt.persistance.dao;

import java.util.List;

import Demo.deviceIsIt.model.Utente;

public interface UtenteDAO {

	public void save(Utente utente);  // Create  == insert/store
	public Utente findByPrimaryKey(String email);     // Retrieve  == select stud
	public List<Utente> findAll();     //  select*
	public void update(Utente old, Utente newu); //Update
	public void delete(Utente utente); //Delete	
	public String findUsername(String email);
	public String findPassword(String email);
	public String getUsername(String email);
}
