package Demo.deviceIsIt.model;

import java.sql.Date;

public class Commento {
	
	private int idcommento;
	private int contenuto;
	private String utente; //Equivale all'username/email
	private Date data;
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
	public String getutente() {
		System.out.println("Utente in commento: "+utente);
		return utente;
	}
	public void setutente(String utente) {
		this.utente = utente;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	public String getTesto() {
		return testo;
	}
	public void setTesto(String testo) {
		this.testo = testo;
	}
	
}
