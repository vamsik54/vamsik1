package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Item;

@Repository
public class AddProductDaoImpl implements AddProductDao{

	@Autowired	
	SessionFactory sessionFactory;
//saving the customer
	public void addProduct(Item item) {
		System.out.println("In AddProductDaoImpl");
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		session.save(item);
		transaction.commit();
		System.out.println("Done saving the product");
		
		
		
	}
	public List<Item> viewItems() {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		List<Item>list=session.createCriteria(Item.class).list();
		return list;
	}
	public void deleteItem(int id) {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		Item item=session.get(Item.class,new Integer(id));
		session.delete(item);
		transaction.commit();
		System.out.println("Deleted product was"+ item.getItemName());
		
	}
	public Item getItemById(int id) {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		Item item=session.get(Item.class,new Integer(id));
		return item;  
	}
	public void updateThis(Item item) {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		session.update(item);
		transaction.commit();
		System.out.println("Item Updated");
		
	}

}
 