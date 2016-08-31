package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.niit.dao.ActionAdventureDao;
import com.niit.model.Item;
@Service
public class ActionAdventureServiceImpl implements ActionAdventureService{
	@Autowired
	ActionAdventureDao actionAdventureDao;

	public List<Item> getElementByCategory(String category) {
		List<Item> list =  actionAdventureDao.getElementByCategory(category);
		return list;
	}
	

}
