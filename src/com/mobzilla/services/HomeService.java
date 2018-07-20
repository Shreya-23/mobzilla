package com.mobzilla.services;

import java.util.List;

import com.mobzilla.entity.BrandBean;
import com.mobzilla.entity.ProductBean;
import com.mobzilla.entity.SpecsBean;

public interface HomeService {
	
	public List<ProductBean> getAllProducts();
	
	public List<ProductBean> getProductByBrand(int brand);
	
	public ProductBean getProductDesc(int id);
	
	public List<BrandBean> getAllBrands();

	public SpecsBean getProductSpecs(int id);

}
