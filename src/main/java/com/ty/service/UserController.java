package com.ty.service;

import org.springframework.stereotype.Service;

import com.ty.dto.Batch;
import com.ty.dto.User;

@Service
public interface UserController {
	
	public void saveUserInfo(User user);

	public User findByEmailPassword(String email, String password);

	public void saveBatch(Batch batch, int userid);

}
