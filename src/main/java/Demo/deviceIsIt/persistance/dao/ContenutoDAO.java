package Demo.deviceIsIt.persistance.dao;

import java.util.List;
import Demo.deviceIsIt.model.Contenuto;

public interface ContenutoDAO {

	public void save(Contenuto c);  // Create  == insert/store
	public Contenuto findByPrimaryKey(int idContenuto);     // Retrieve  == select stud
	public List<Contenuto> findAll();     //  select*
	public List<Contenuto> findArticoli();
	public List<Contenuto> findRecensioni();
	public List<Contenuto> findLastThreeArticoli();
	public List<Contenuto> findLastThreeRecensioni();
	public void update(Contenuto c); //Update
	public void delete(Contenuto c); //Delete	
	public List<Contenuto> findByTipology(Integer tipologia);
	public List<Contenuto> findRecensioniPc();
	public List<Contenuto> findRecensioniSmartphone();
	public List<Contenuto> researchResultArticoli(String string);
	public List<Contenuto> researchResultRecensioni(String string);
	
}
