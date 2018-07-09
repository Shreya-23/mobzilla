package com.mobzilla.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.mobzilla.entity.UserBean;
import com.mobzilla.repository.UserRepository;

public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository repo;

	@Override
	public Boolean registerUser(UserBean user) {
		// TODO Auto-generated method stub
		return repo.registerUser(user);
	}

}
