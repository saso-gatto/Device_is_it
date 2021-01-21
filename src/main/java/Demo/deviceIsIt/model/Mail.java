package Demo.deviceIsIt.model;

import java.util.List;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {

	private static Mail instance = null; 
	private static String Server="smtp.gmail.com";
	private static String Porta="587";
	private static String myEmail="deviceisit@gmail.com";
	private static String myPass="Password.1";
	private String anteprima="";
	private String titolo="";
	 
	 
	 
	public static Mail getInstance() {
		if (instance == null) {
			instance = new Mail();
		}
		return instance;
	}
	 
	private Mail() {}
	 
	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		String tag1="<h1>";
		String tag2="</h1><br>";
		this.titolo = tag1+titolo+tag2;
	}

	public String getAnteprima() {
		return anteprima;
	}

	public void setAnteprima(String anteprima) {
		this.anteprima = anteprima;
	}

	public void inviaNewsletter(List<Utente> iscritti) throws Exception {
    	 				
        Properties properties = new Properties();

         //Abilita autenticazione
         properties.put("mail.smtp.auth", "true");
         //set crittografia TLS abilitata
         properties.put("mail.smtp.starttls.enable", "true");
         //Set SMTP host
         properties.put("mail.smtp.host", Server);
         //Set smtp porta
         properties.put("mail.smtp.port", Porta);

         //Crea una sessione con le credenziali dell'account
         Session session = Session.getInstance(properties, new Authenticator() {
             @Override
             protected PasswordAuthentication getPasswordAuthentication() {
                 return new PasswordAuthentication(myEmail, myPass);
             }
         });
 	 		    		            
         for (Utente u: iscritti) {
			Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(myEmail));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(u.getEmail()));
            message.setSubject("Device Is It: un nuovo contenuto ti aspetta!");
            message.setContent(titolo+anteprima, "text/html");
            Transport.send(message);
		}

	}
	    		
	    	
	
}
