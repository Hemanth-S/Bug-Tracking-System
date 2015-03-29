package com.defecttracking.common.helper;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class MailSending {
	
	public static String username="info@medicaldiary.co.za";
	public static void sendMail(String msgto,String msgfrom,String msgsub,String msgbody)
	{
		try{
			
			String mailServer="mail.medicaldiary.co.za";
			//String username=username;
			String password="info123321";
//			 Setup mail server 
			Properties props = System.getProperties(); 
			props.put("mail.smtp.host", mailServer); 
			props.put("mail.smtp.port", "25");
			props.put("mail.smtp.auth", "true");
//			 Get a mail session 
//			Session session2=Session.getDefaultInstance(props,null);
			Authenticator auth = new PopupAuthenticator(username,password);
			 Session session2 = Session.getInstance(props, auth);
//			Session session = Session.getDefaultInstance(props, null); 

//			 Define a new mail message 
			Message message = new MimeMessage(session2); 
			message.setFrom(new InternetAddress(msgfrom)); 
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(msgto)); 
			message.setSubject(msgsub); 

//			 Create a message part to represent the body text 
			BodyPart messageBodyPart = new MimeBodyPart(); 
			//messageBodyPart.setText(msgbody); 
			messageBodyPart.setContent(msgbody, "text/html");
//			use a MimeMultipart as we need to handle the file attachments 
			Multipart multipart = new MimeMultipart(); 

//			add the message body to the mime message 
			multipart.addBodyPart(messageBodyPart); 

//			 add any file attachments to the message 
//			  addAtachments(attachments, multipart); 

//			 Put all message parts in the message 
			
			message.setContent(multipart); 

//			 Send the message 
//			Transport.send(message); 
			
			Transport tr = session2.getTransport("smtp");
			tr.connect(mailServer, username, password);
			message.saveChanges(); // don't forget this
			tr.sendMessage(message, message.getAllRecipients());
			tr.close();
			}
			catch (Exception e) {
//			 TODO: handle exception
			System.out.println("EXCEPTION : "+e);
			}
			}
	}



