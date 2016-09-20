package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CustomerDao;
import com.niit.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	CustomerDao customerDao;
	public String addCustomer(Customer customer) {
		
		return customerDao.addCustomer(customer);
	}
	public List<Customer> viewCustomers() {
	List<Customer> list=customerDao.viewCustomers();
		return list;
	}
	public Customer getCustomerByName(String name) {
		return customerDao.getCustomerByName(name);
		
	}

}
