package Demo.deviceIsIt.model;

public class Commento {
	
	private int idcommento;
	private int contenuto;
	private String utente; //Equivale all'username/email
	private String data;
	private String testo;
	
	
	public int getidcommento() {
		return idcommento;
	}
	public void setidcommento(int idcommento) {
		this.idcommento = idcommento;
	}
	public int getcontenuto() {
		return contenuto;
	}
	public void setcontenuto(int contenuto) {
		this.contenuto = contenuto;
	}
	public String getUtente() {
		return utente;
	}
	public void setUtente(String utente) {
		this.utente = utente;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getTesto() {
		return testo;
	}
	public void setTesto(String testo) {
		this.testo = testo;
	}
	
}
