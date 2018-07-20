package com.mobzilla.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobzilla.entity.AddProductBean;
import com.mobzilla.entity.CartBean;
import com.mobzilla.entity.LoginBean;
import com.mobzilla.entity.OrdersBean;
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
	
	


	@Override
	public List<CartBean> getCartProducts(LoginBean login) {
		// TODO Auto-generated method stub
		return repo.getCartProducts(login);
	}


	@Override
	public boolean orderProducts(LoginBean login) {
		// TODO Auto-generated method stub
		List<CartBean> cart=repo.getCartProducts(login);
		
		return repo.orderProducts(login, cart);
	}




	@Override
	public boolean deleteProduct(LoginBean lbean, int productId) {
		// Tse;ODO Auto-generated method stub
		
		return repo.deleteProduct(lbean,productId);
		
		
	}




	@Override
	public double getTotal(List<CartBean> cartList) {
		// TODO Auto-generated method stub
		Double total=0.0;
		for(int i=0;i<cartList.size();i++) {
			
			total=total+cartList.get(i).getTotalPrice();
		}
		
		return total;
	}




	@Override
	public List<OrdersBean> getUserOrders(LoginBean login) {
		// TODO Auto-generated method stub
		return repo.getUserOrder(login);
	}

}
