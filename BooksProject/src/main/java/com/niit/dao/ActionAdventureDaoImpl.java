package com.niit.dao;

import java.util.List;

import org.hibernate.Transaction;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Item;
@Repository
public class ActionAdventureDaoImpl implements ActionAdventureDao{
	@Autowired
	SessionFactory sessionFactory;

	public List<Item> getElementByCategory(String Category) 
	{
	Session session = sessionFactory.getCurrentSession();
	Transaction transaction= (Transaction) session.beginTransaction();
	List<Item> list = session.createCriteria(Item.class).add(Restrictions.like("category", Category)).list();
		return list;
	}
	

}
