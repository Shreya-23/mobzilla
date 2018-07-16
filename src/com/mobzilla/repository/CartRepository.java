package com.mobzilla.repository;

import org.springframework.stereotype.Repository;

import com.mobzilla.entity.AddProductBean;
import com.mobzilla.entity.CartBean;

@Repository
public interface CartRepository {

	public AddProductBean productExist(CartBean cart);
	
	public boolean addProduct(CartBean cart);
	
	public boolean updateProduct(CartBean cart);

	
	
	
}
