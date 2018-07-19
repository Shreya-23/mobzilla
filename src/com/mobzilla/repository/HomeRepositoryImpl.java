package com.mobzilla.repository;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobzilla.entity.BrandBean;
import com.mobzilla.entity.ProductBean;
import com.mobzilla.entity.SpecsBean;

@Repository
public class HomeRepositoryImpl implements HomeRepository {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<ProductBean> getAllProducts() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction txn=session.beginTransaction();
		
		List<ProductBean> products = session.createQuery("FROM ProductBean").list();
		if(products!=null)
		System.out.println(products.size());
		
		txn.commit();
		return products;
	}

	@Override
	public ProductBean getProductDesc(int id) {
		// TODO Auto-generated method stub
		String hql="FROM ProductBean P WHERE P.productId =:product_id";
		
		Session session=sessionFactory.openSession();
		Transaction txn=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setParameter("product_id", id);
		ProductBean product=(ProductBean) query.list().get(0);
		txn.commit();
		
		return product;
	}

	@Override
	public List<ProductBean> getProductByBrand(int brand) {
		// TODO Auto-generated method stub
		
		String hql="FROM ProductBean P WHERE P.productBrand =:product_brand";
		
		Session session=sessionFactory.openSession();
		Transaction txn=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setInteger("product_brand", brand);
		List<ProductBean> products=query.list();
		txn.commit();
		
		return products;
		
	}

	@Override
	public List<BrandBean> getAllBrands() {
		// TODO Auto-generated method stub
		try {
		Session session=sessionFactory.openSession();
		Transaction txn=session.beginTransaction();
		
		List<BrandBean> brands = session.createQuery("FROM BrandBean").list();
		if(brands!=null)
		System.out.println(brands.size());
		
		txn.commit();
		return brands;
		}catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		
	}

	@Override
	public SpecsBean getProductSpecs(int id) {
		// TODO Auto-generated method stub
		String hql="FROM SpecsBean P WHERE P.productId =:product_id";
		
		Session session=sessionFactory.openSession();
		Transaction txn=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setParameter("product_id", id);
		SpecsBean specs=(SpecsBean) query.list().get(0);
		txn.commit();
		
		return specs;
	}

}
