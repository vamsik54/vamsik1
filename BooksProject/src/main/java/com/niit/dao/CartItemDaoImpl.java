package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.CartItem;


@Repository
public class CartItemDaoImpl implements CartItemDao{

	@Autowired
	SessionFactory sessionFactory;
	public void addCartItem(CartItem cartItem) {
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		session.save(cartItem);
		transaction.commit();
		System.out.println("added cartitem");
	}
	public List<CartItem> getCartItemByCartId(int cartId)
	{
		Session session=sessionFactory.getCurrentSession();
		@SuppressWarnings("unused")
		Transaction transaction=session.beginTransaction();
		String hql = "from CartItem where CartId = '"+cartId+"' ";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<CartItem> list = query.list();
		System.out.println("daoimpl"+list);
		return list;
		
	}
}
