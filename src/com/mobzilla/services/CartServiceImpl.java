package com.mobzilla.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobzilla.entity.AddProductBean;
import com.mobzilla.entity.CartBean;
import com.mobzilla.repository.CartRepository;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartRepository repo;
	

	@Override
	public boolean addProduct(CartBean cart) {
		// TODO Auto-generated method stub
		AddProductBean add=repo.productExist(cart);
		if(add.getExist()) {
			System.out.println("update called");
			cart.setQuantity((add.getQuantity()+1));
			return repo.updateProduct(cart);
		}
		else {
			cart.setQuantity(add.getQuantity());
			return repo.addProduct(cart);
		}
	}

}
