package com.niit.dao;

import java.util.List;

import com.niit.model.Customer;

public interface CustomerDao {
	String addCustomer(Customer customer);
	List<Customer> viewCustomers();
	Customer getCustomerByName(String name);

}
