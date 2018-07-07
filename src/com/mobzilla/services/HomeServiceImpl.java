package com.mobzilla.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mobzilla.entity.ProductBean;
import com.mobzilla.repository.HomeRepository;

@Service
public class HomeServiceImpl implements HomeService {
	
	@Autowired
	private HomeRepository repo;

	@Override
	public List<ProductBean> getAllProducts() {
		// TODO Auto-generated method stub
		
		return repo.getAllProducts();
	}

}
