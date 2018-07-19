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
	
	@Column(name="product_name")
	private String productName;
		
	@Column(name="product_price", length = 10, precision = 2)
	private double productPrice;
	
	@Column(name="quantity")
	private int quantity;
	
	@Column(name="total_price")
	private double totalPrice;
	
	@Column(name="order_date")
	private String date;
	
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	
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

	

}
