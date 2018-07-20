package com.mobzilla.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mobzilla.entity.AddProductBean;
import com.mobzilla.entity.CartBean;
import com.mobzilla.entity.LoginBean;
import com.mobzilla.entity.OrdersBean;

@Repository
public interface CartRepository {

	public AddProductBean productExist(CartBean cart);
	
	public boolean addProduct(CartBean cart);
	
	public boolean deleteProduct(LoginBean lbean,int productId);
	
	public boolean updateProduct(CartBean cart);

	public List<CartBean> getCartProducts(LoginBean login);

	public boolean orderProducts(LoginBean login,List<CartBean> cartList);

	public List<OrdersBean> getUserOrder(LoginBean login);

	
	
	
}
