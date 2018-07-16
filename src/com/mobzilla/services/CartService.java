package com.mobzilla.services;

import org.springframework.stereotype.Service;

import com.mobzilla.entity.CartBean;


public interface CartService {

	public boolean addProduct(CartBean cart);

}
