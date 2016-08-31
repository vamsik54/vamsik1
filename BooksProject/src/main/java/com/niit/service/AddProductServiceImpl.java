 package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.AddProductDao;
import com.niit.model.Item;


@Service
public class AddProductServiceImpl implements AddProductService{
	@Autowired
	AddProductDao addProductDao;
	
	public void addProduct(Item item) {
		System.out.println("AddProductServiceImpl.addProduct()");
		
		addProductDao.addProduct(item);
	}
	public List<Item> viewItems() {
	List<Item> list=addProductDao.viewItems();
		return list;
	}
	public void deleteItem(int id) {
		addProductDao.deleteItem(id);
		
	}
	public Item getItemById(int id) {
		
		return addProductDao.getItemById(id);
	}
	public void updateThis(Item item) {
	addProductDao.updateThis(item);
		
	}
}
