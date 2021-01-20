package Demo.deviceIsIt.model;

import java.util.List;

public class iscrittiNewsletter {
	
	private List<Utente> ListaUtenti;

	public List<Utente> getListaUtenti() {
		return ListaUtenti;
	}

	public void rimuoviUtente(Utente utente) {
		ListaUtenti.remove(utente);
	}
	
	public void aggiungiUtente(Utente utente) {
		ListaUtenti.add(utente);
	}


}
