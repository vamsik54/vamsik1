package com.niit.service;

import java.util.List;

import com.niit.model.CartItem;

public interface CartItemService {
	void addCartItem(CartItem cartItem);
	List<CartItem> getCartItemByCartId(int cartId);

}
