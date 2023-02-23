package com.builders.service;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSendService {

	public static void sendMail(String emailId, String userName) {

		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		// props.put("mail.smtp.ssl", "mail.smtp.sender.address");

		// get Session
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("developerjava1997@gmail.com", "zpsxovjasmbhjroz");
			}

		});
		// compose message
		try {
			MimeMessage message1 = new MimeMessage(session);
			message1.addRecipient(Message.RecipientType.TO, new InternetAddress(emailId));
			message1.setSubject("Builders");
			message1.setText("Hi " + userName + ",\n" + "You are successfully registered with Builders!");
			Transport.send(message1);

		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}

}
