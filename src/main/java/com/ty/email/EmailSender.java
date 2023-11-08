package com.ty.email;

import java.util.Properties;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

public class EmailSender {

	public boolean sendEmail(String to, String from, String subject, String text) {

		boolean flag = false;

		Properties properties = new Properties();
		properties.put("mail.smtp.auth", true);
		properties.put("mail.smtp.starttls.enable", true);
		properties.put("mail.smtp.port", "587");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		String userName = "hrmstest1322";
		String password = "wfxc jrtl lfnd wfgo";
		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(userName, password);
			}
		});

		try {
			Message mailMessage = new MimeMessage(session);

			mailMessage.setFrom(new InternetAddress(from));
			mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
			mailMessage.setSubject(subject);
			mailMessage.setText(text);
			Transport.send(mailMessage);
			flag = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return flag;
	}
}
