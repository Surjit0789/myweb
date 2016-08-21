package mysite;

import java.util.Properties;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.naming.Context;
import javax.naming.InitialContext;


/**
 * Session Bean implementation class MailSession
 */
@Stateless
@LocalBean
public class MailSession {

	public void sendMail() {
		Properties prop = System.getProperties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		//prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.port", "465");
		prop.put("mail.smtp.socketFactory.port", "465");
		prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

		Session mailsession = null;
		try {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");		
		mailsession = (Session) envCtx.lookup("mail/Session");
		mailsession.setDebug(true);
		mailsession = Session.getDefaultInstance(prop, null);
		
		Message mailsms = new MimeMessage(mailsession);
		mailsms.setFrom(new InternetAddress("javadeveloper774@gmail.com"));
		mailsms.setRecipient(Message.RecipientType.TO, new InternetAddress("lubana.surjitsingh68@gmail.com"));
		mailsms.setContent("Hi Surjit", "text/html");
		Transport trans = mailsession.getTransport("smtp");
		trans.connect("smtp.gmail.com", "javadeveloper774@gmail.com", "Surjit$123");
		trans.sendMessage(mailsms, mailsms.getAllRecipients());
		
		} catch (Exception ex) {
			System.out.println(ex);
		}
		
		
		
		
		
		
		/*System.out.println("Enter Into it");
		Properties prop = System.getProperties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.port", "465");
		prop.put("mail.smtp.socketFactory.port", "465");
		prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

		try {
			Context initCtx;
			Context envCtx;
			Session mailSession;
			try {
				initCtx = new InitialContext();
				envCtx = (Context) initCtx.lookup("java:comp/env");
				mailSession = (Session) envCtx.lookup("bean/MyBeanFactory");
				Session.getDefaultInstance(prop, null);
				mailSession.setDebug(true);
				Message mailsms = new MimeMessage(mailSession);
				mailsms.setFrom(new InternetAddress("lubana.surjitsingh68@gmail.com"));
				mailsms.setRecipient(Message.RecipientType.TO, new InternetAddress("lubana.surjitsingh68@gmail.com"));
				mailsms.setContent("Hi Surjit", "text/html");
				Transport trans = mailSession.getTransport("smtp");
				trans.connect("smtp.gmail.com", "lubana.surjitsingh68@gmail.com", "bunty681DE");
				trans.sendMessage(mailsms, mailsms.getAllRecipients());
			} catch (NamingException e) {
				System.out.println("Here Is issue"+ e);
			}
			

		} catch (AddressException e) {

			System.out.println("Here is Issue 2 "+e);
		} catch (MessagingException e) {

			System.out.println("No budy here is Issue 3"+e);
		}
*/
	}

}
