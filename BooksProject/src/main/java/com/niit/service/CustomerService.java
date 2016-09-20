package com.niit.service;

import java.util.List;

import com.niit.model.Customer;

public interface CustomerService {
	String addCustomer(Customer customer);
	List<Customer> viewCustomers();
	Customer getCustomerByName(String name);
}
