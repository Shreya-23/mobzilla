package com.mobzilla.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.mobzilla.entity.UserBean;

public class UserRepositoryImpl implements UserRepository{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Boolean registerUser(UserBean user) {
		// TODO Auto-generated method stub
		Session session=null;
		Transaction txn=null;
		try {
			session=sessionFactory.getCurrentSession();
			txn=session.beginTransaction();
			session.save(user);
			txn.commit();
			return true;
		}
		catch (Exception e) {
			// TODO: handle exception
			return false;
		}
		
	}

}
