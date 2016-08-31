package com.niit.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

public class MyCart {
	private int mycartId;
	private double mygrandTotal;
	@OneToMany(mappedBy="mycart", cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	private List<MyCartItem> mycartItem;
	public int getMycartId() {
		return mycartId;
	}
	public void setMycartId(int mycartId) {
		this.mycartId = mycartId;
	}
	public double getMygrandTotal() {
		return mygrandTotal;
	}
	public void setMygrandTotal(double mygrandTotal) {
		this.mygrandTotal = mygrandTotal;
	}
	@OneToOne
	@JoinColumn(name="customerId")
	private Customer customer;
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

}
