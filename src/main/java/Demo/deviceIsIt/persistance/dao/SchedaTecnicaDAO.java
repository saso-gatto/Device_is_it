package Demo.deviceIsIt.persistance.dao;

import java.util.List;

import Demo.deviceIsIt.model.SchedaTecnica;

public interface SchedaTecnicaDAO {
	public void save(SchedaTecnica scheda);  // Create  == insert/store
	public SchedaTecnica findByPrimaryKey(int idScheda);     // Retrieve  == select stud
	public List<SchedaTecnica> findAll();     //  select*
	public void update(SchedaTecnica scheda); //Update
	public void delete(SchedaTecnica scheda); //Delete	


}
