package com.mobzilla.repository;

import com.mobzilla.entity.AddressBean;
import com.mobzilla.entity.LoginBean;
import com.mobzilla.entity.UserBean;

public interface UserRepository {
	
	public Boolean validate(LoginBean login);
	public Boolean registerUser(UserBean user,AddressBean address);

}
