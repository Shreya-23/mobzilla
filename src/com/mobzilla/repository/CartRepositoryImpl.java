package com.mobzilla.repository;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobzilla.entity.AddProductBean;
import com.mobzilla.entity.CartBean;
import com.mobzilla.entity.LoginBean;
import com.mobzilla.entity.OrdersBean;
import com.mobzilla.entity.ProductBean;

import oracle.net.aso.l;

@Repository
public class CartRepositoryImpl implements CartRepository {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public AddProductBean productExist(CartBean cart) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction txn=session.beginTransaction();
		Query query=session.createQuery("FROM CartBean WHERE userId= :user AND productId= :product");
		query.setParameter("user", cart.getUserId());
		query.setParameter("product", cart.getProductId());
		
		List<CartBean> products = query.list();
		txn.commit();
		AddProductBean add=new AddProductBean();
		if(products.isEmpty()) {
			add.setQuantity(1);
			add.setExist(false);
			return add;
		}
		else {
			add.setQuantity(products.get(0).getQuantity());
			add.setExist(true);
			return add;
		}
	}

	@Override
	public boolean addProduct(CartBean cart) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction txn=session.beginTransaction();
		cart.setTotalPrice(cart.getUnitPrice());
		session.save(cart);
		txn.commit();
		return true;
	}

	@Override
	public boolean updateProduct(CartBean cart) {
		
		Session session=sessionFactory.openSession();
		Transaction txn=session.beginTransaction();
		
		Query query=session.createQuery("UPDATE CartBean c SET c.quantity= :new , c.totalPrice= :tprice WHERE c.userId= :user AND c.productId= :product");
		query.setParameter("new",cart.getQuantity());
		query.setParameter("user", cart.getUserId());
		query.setParameter("product", cart.getProductId());
		query.setParameter("tprice", (cart.getUnitPrice()*cart.getQuantity()));
		query.executeUpdate();
		txn.commit();
		return true;
	}

	@Override
	public List<CartBean> getCartProducts(LoginBean login) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction txn=session.beginTransaction();
		
		Query query=session.createQuery("FROM CartBean WHERE userId= :user");
		
		query.setParameter("user", login.getEmail());
		
		List<CartBean> list=query.list();
		txn.commit();

		
		
		return list;
	}

	@Override
	public boolean orderProducts(LoginBean login,List<CartBean> cartList) {
		// TODO Auto-generated method stub
		Session session=null;
		Transaction txn=null;
		OrdersBean order=new OrdersBean();
		CartBean cart=null;
		for(int i=0;i<cartList.size();i++) {
			session=sessionFactory.openSession();
			txn=session.beginTransaction();
			cart=cartList.get(i);
			order.setDate(getDateTime());
			order.setProductId(cart.getProductId());
			order.setProductName(cart.getProductName());
			order.setProductPrice(cart.getUnitPrice());
			order.setQuantity(cart.getQuantity());
			order.setUserId(cart.getUserId());
			order.setTotalPrice((cart.getUnitPrice()*cart.getQuantity()));
			
			session.save(order);
			txn.commit();
		}
		session=sessionFactory.openSession();
		txn=session.beginTransaction();
		Query query=session.createQuery("DELETE CartBean WHERE userId= :user");
		query.setParameter("user", login.getEmail());
		query.executeUpdate();
		txn.commit();
		return true;
	}

	@Override
	public boolean deleteProduct(LoginBean lbean, int productId) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.openSession();
		Transaction txn=session.beginTransaction();
		Query query=session.createQuery("FROM CartBean WHERE userId= :user AND productId= :product");
		query.setParameter("user", lbean.getEmail());
		query.setParameter("product",productId);
		
		List<CartBean> products = query.list();
		int quantity=products.get(0).getQuantity();
		Double unitPrice=products.get(0).getUnitPrice();
		if(quantity>1) {
			
			query=session.createQuery("UPDATE CartBean c SET c.quantity= :new ,c.totalPrice= :tprice WHERE c.userId= :user AND c.productId= :product");
			query.setParameter("new",(quantity-1));
			query.setParameter("user", lbean.getEmail());
			query.setParameter("product", productId);
			query.setParameter("tprice", (unitPrice*(quantity-1)));
			query.executeUpdate();
			
		}
		else {
			
			query=session.createQuery("DELETE CartBean WHERE userId= :user AND productId= :product");
			query.setParameter("user", lbean.getEmail());
			query.setParameter("product", productId);
			query.executeUpdate();
			
		}
		
		txn.commit();
		
		
		
		
		
		return true;
	}

	@Override
	public List<OrdersBean> getUserOrder(LoginBean login) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction txn=session.beginTransaction();
		
		Query query=session.createQuery("FROM OrdersBean WHERE userId= :user");
		
		query.setParameter("user", login.getEmail());
		
		List<OrdersBean> list=query.list();
		txn.commit();
	
		return list;
	}
	
	private String getDateTime() {
		
		 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		   LocalDateTime now = LocalDateTime.now();  
		   return dtf.format(now); 
	}
	
	

}
