package com.mobzilla.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="products")
@SequenceGenerator(name="product_id",sequenceName="product_seq")
public class ProductBean {
	
	@Id
	@Column(name="product_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private String productId;
	
	@Column(name="product_img_url")
	private String productImgUrl;

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductImgUrl() {
		return productImgUrl;
	}

	public void setProductImgUrl(String productImgUrl) {
		this.productImgUrl = productImgUrl;
	}

}
