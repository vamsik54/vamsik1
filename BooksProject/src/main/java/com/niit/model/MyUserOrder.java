package com.niit.model;

public class MyUserOrder {
private int myOrderId;
private Customer customer;
private MyCart mycart;
public int getMyOrderId() {
	return myOrderId;
}
public void setMyOrderId(int myOrderId) {
	this.myOrderId = myOrderId;
}
public Customer getCustomer() {
	return customer;
}
public void setCustomer(Customer customer) {
	this.customer = customer;
}
public MyCart getMycart() {
	return mycart;
}
public void setMycart(MyCart mycart) {
	this.mycart = mycart;
}

}
