package com.mobzilla.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mobzilla.entity.CartBean;
import com.mobzilla.entity.LoginBean;


public interface CartService {

	public boolean addProduct(CartBean cart);

	public List<CartBean> getCartProducts(LoginBean login);

	public boolean orderProducts(LoginBean login);

	public boolean deleteProduct(LoginBean lbean, int productId);

	public double getTotal(List<CartBean> cartList);

}
