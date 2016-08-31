package com.niit.service;

import java.util.List;

import com.niit.model.Item;

public interface AddProductService {
	void addProduct(Item item);
	List<Item> viewItems();
	void deleteItem(int id);
	Item getItemById(int id);
	void updateThis(Item item);
}
