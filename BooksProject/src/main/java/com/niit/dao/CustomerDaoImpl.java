package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Customer;
import com.niit.model.UserRole;

@Repository
public class CustomerDaoImpl implements CustomerDao{

@Autowired	
	SessionFactory sessionFactory;
//saving the customer
	public void addCustomer(Customer customer) {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		customer.setEnabled(true);
		session.save(customer);
		UserRole userRole=new UserRole();
		userRole.setAuthority("ROLE_USER");
		userRole.setUserId(customer.getCustomerid());
		session.save(userRole);
		transaction.commit();
		System.out.println("Done saving the customer");
		
		
		
	}
	public List<Customer> viewCustomers() {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		List<Customer>list=session.createCriteria(Customer.class).list();
		return list;
	}

}
