package com.niit.dao;

import java.util.List;

import com.niit.model.CartItem;

public interface CartItemDao {
	void addCartItem(CartItem cartItem);
	List<CartItem> getCartItemByCartId(int cartId);

}
