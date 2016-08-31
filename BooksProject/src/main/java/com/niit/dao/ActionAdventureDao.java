package com.niit.dao;

import java.util.List;

import com.niit.model.Item;

public interface ActionAdventureDao 
{
	List<Item> getElementByCategory(String Categoty);

}
