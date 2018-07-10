package com.mobzilla.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobzilla.entity.AddressBean;
import com.mobzilla.entity.LoginBean;
import com.mobzilla.entity.UserBean;


public interface UserService {

	public Boolean validate(LoginBean login);
	public Boolean registerUser(UserBean user,AddressBean address);
}
