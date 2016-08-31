package com.niit.model;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class MyCartItem {
	private int mycartItemId;
	private int myquantity;
	private Item item;
	private double finalPrice;
	@ManyToOne
	@JoinColumn(name="mycartId")
	private MyCart mycart;
	public MyCart getMycart() {
		return mycart;
	}
	public void setMycart(MyCart mycart) {
		this.mycart = mycart;
	}
	public int getMycartItemId() {
		return mycartItemId;
	}
	public void setMycartItemId(int mycartItemId) {
		this.mycartItemId = mycartItemId;
	}
	public int getMyquantity() {
		return myquantity;
	}
	public void setMyquantity(int myquantity) {
		this.myquantity = myquantity;
	}
	public Item getItem() {
		return item;
	}
	public void setItem(Item item) {
		this.item = item;
	}
	public double getFinalPrice() {
		return finalPrice;
	}
	public void setFinalPrice(double finalPrice) {
		this.finalPrice = finalPrice;
	}
	

}
