package com.mobzilla.repository;

import com.mobzilla.entity.AddressBean;
import com.mobzilla.entity.UserBean;

public interface UserRepository {
	
	public Boolean registerUser(UserBean user,AddressBean address);

}
