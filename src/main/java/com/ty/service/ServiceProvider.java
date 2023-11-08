package com.ty.service;

import javax.persistence.NoResultException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ty.dao.BatchDao;
import com.ty.dao.UserDao;
import com.ty.dto.Batch;
import com.ty.dto.User;
import com.ty.email.EmailSender;

@Service
public class ServiceProvider implements UserController {
	
	@Override
	public void saveUserInfo(User user) {

		UserDao userDao= new UserDao();
		userDao.saveUser(user);

	}

	@Override
	public User findByEmailPassword(String email, String password) {
		UserDao userDao= new UserDao();
		return userDao.findByEmailPassword(email, password);
	}

	@Override
	public void saveBatch(Batch batch, int userid) throws NoResultException {

		BatchDao batchDao= new BatchDao();
		batchDao.saveBatch(batch, userid);

		UserDao userDao= new UserDao();
		User user = userDao.fndUserById(userid);

		EmailSender emailSender = new EmailSender();
		String toemail = user.getEmail();
		String from = "hrmstest1322@gmail.com";
		String subject = "New Batch Assigned!!";
		String text= "Hello "+user.getName()+", New Batch for the "+batch.getSubject()+" subject is assigned to you";
		
		boolean result = emailSender.sendEmail(toemail, from, subject, text);

		if (result) {
			System.out.println("mail sent");
		} else {
			System.out.println("failed to send");
		}
	}

}
