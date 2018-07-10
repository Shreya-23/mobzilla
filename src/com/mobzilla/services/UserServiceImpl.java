package com.mobzilla.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobzilla.entity.AddressBean;
import com.mobzilla.entity.LoginBean;
import com.mobzilla.entity.UserBean;
import com.mobzilla.repository.UserRepository;


@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository repo;

	@Override
	public Boolean registerUser(UserBean user,AddressBean address) {
		// TODO Auto-generated method stub
		return repo.registerUser(user,address);
	}

	@Override
	public Boolean validate(LoginBean login) {
		// TODO Auto-generated method stub
		return repo.validate(login);
	}

}
