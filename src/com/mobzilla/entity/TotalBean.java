package com.mobzilla.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class TotalBean {
	
	@Id
	private Double total;

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

}
