package Demo.deviceIsIt.persistance.dao;

import java.util.List;

import Demo.deviceIsIt.model.Utente;

public interface UtenteDAO {

	public boolean save(Utente utente);  // Create  == insert/store
	public Utente findByPrimaryKey(String email);     // Retrieve  == select stud
	public List<Utente> findAll();     //  select*
	public void update(Utente old, Utente newu); //Update
	public void delete(Utente utente); //Delete	
	public String findUsername(String email);
	public boolean checkPassword(String email, String password);
	public String getUsername(String email);
	public boolean existsUser(String email);
	public List<Utente> getIsctittiNewsletter();
	
	
}
