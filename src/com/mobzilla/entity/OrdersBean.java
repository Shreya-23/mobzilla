package com.mobzilla.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="order_table")
@SequenceGenerator(name="orderseq",sequenceName="order_seq")
public class OrdersBean {
	
	@Id
	@Column(name="order_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="orderseq")
	private int orderId;
	
	@Column(name="user_id")
	private String userId;
	
	@Column(name="product_id")
	private int productId;
		
	@Column(name="product_price", length = 10, precision = 2)
	private double productPrice;
	
	@Column(name="address_id")
	private int address;
	
	@Column(name="payment_type")
	private String paymentType;
	
	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}


	public double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public int getAddress() {
		return address;
	}

	public void setAddress(int address) {
		this.address = address;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	

}
