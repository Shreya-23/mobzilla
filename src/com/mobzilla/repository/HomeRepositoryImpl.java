package com.mobzilla.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobzilla.entity.ProductBean;

@Repository
public class HomeRepositoryImpl implements HomeRepository {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<ProductBean> getAllProducts() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Transaction txn=session.beginTransaction();
		
		List<ProductBean> products = session.createQuery("FROM ProductBean").list();
		if(products!=null)
		System.out.println(products.size());
		
		txn.commit();
		return products;
	}

}
