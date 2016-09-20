package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.Customer;
import com.niit.model.UserRole;

@Repository
public class CustomerDaoImpl implements CustomerDao{

@Autowired	
	SessionFactory sessionFactory;
public Customer initFlow(){
	return new Customer();
}
//saving the customer
	public String addCustomer(Customer customer) {
		String status ="success";
		if(customer.getUsername().isEmpty())
		{
			return "failure";
		}
		if(customer.getPassword().isEmpty())
		{
			return "failure";
		}
		if(customer.getEmailid().isEmpty())
		{
			return "failure";
		}
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		customer.setEnabled(true);
		session.save(customer);
		UserRole userRole=new UserRole();
		userRole.setAuthority("ROLE_USER");
		userRole.setUserId(customer.getCustomerid());
		session.save(userRole);
		Cart cart=new Cart();
		cart.setCustomer(customer);
		customer.setCart(cart);
		session.save(cart);
		transaction.commit();
		System.out.println("Done saving the customer");
		return status;
		
		
		
		
	}
	public List<Customer> viewCustomers() {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		List<Customer>list=session.createCriteria(Customer.class).list();
		return list;
	}
	public Customer getCustomerByName(String name) {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		Customer customer=(Customer) session.createCriteria(Customer.class).add(Restrictions.like("username", name)).uniqueResult();
		return customer;
	}

}
