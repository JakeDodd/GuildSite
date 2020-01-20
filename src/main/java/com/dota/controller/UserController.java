package com.dota.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dota.model.User;
import com.dota.model.UserDAO;

@RestController
public class UserController {
	
	private UserDAO userDao;
	
	@Autowired
	public UserController(UserDAO userDao) {
		this.userDao = userDao;
	}

	@GetMapping("/user")
	public User user() {
		User user = userDao.getName();
		return user;
	}
	
}
