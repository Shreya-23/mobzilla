package com.mobzilla.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobzilla.entity.UserBean;

@Service
public interface UserService {

	public Boolean registerUser(UserBean user);
}
