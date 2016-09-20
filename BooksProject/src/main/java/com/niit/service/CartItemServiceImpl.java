package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CartItemDao;
import com.niit.model.CartItem;


@Service
public class CartItemServiceImpl implements CartItemService {

	@Autowired
    CartItemDao cartItemDao;
	public void addCartItem(CartItem cartItem) {
		cartItemDao.addCartItem(cartItem);
		
	}
	public List<CartItem> getCartItemByCartId(int cartId) {
		
		return cartItemDao.getCartItemByCartId(cartId);
	}

}
