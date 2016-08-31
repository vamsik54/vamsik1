package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Customer;
import com.niit.model.Item;
import com.niit.service.AddProductService;
import com.niit.service.CustomerService;

@Controller
public class AdminController {
	@Autowired
	CustomerService c;
	@Autowired
	AddProductService addProductService;
	@RequestMapping("/addItem")
	public ModelAndView addItem()
	{
		Item item=new Item();
		return new ModelAndView("addItem","item",item);
		
	}
	@RequestMapping("/ViewCustomers")
	public ModelAndView viewCustomers() throws JsonGenerationException, JsonMappingException, IOException{
		List<Customer> list=c.viewCustomers();
		System.out.println("List is:"+list);
		ObjectMapper mapper=new ObjectMapper();
		String listJSON=mapper.writeValueAsString(list);
		System.out.println(listJSON);
		return new ModelAndView("ViewCustomers","listOfCustomers",listJSON);
	}
	
	@RequestMapping("/addProduct")
	public String addPro(@Valid@ModelAttribute("item") Item item,BindingResult bindingresult,@RequestParam("file") MultipartFile file) throws IllegalStateException, IOException
	{
		if(bindingresult.hasErrors())
		{
			System.out.println("It has errors");
			return "addItem";
		}
		System.out.println("Product Name:"+item.getItemName());
		System.out.println("Product Description:"+item.getDescription());
		addProductService.addProduct(item);
		MultipartFile itemImage=item.getFile();
		Path path=Paths.get("C://Users//vamsi//workspace1//BooksProject//src//main//webapp//WEB-INF//resources//images//"+item.getItemId()+".jpg");
		if(itemImage !=null && !itemImage.isEmpty()){
			itemImage.transferTo(new File(path.toString()));
			System.out.println("image added");
		}
		System.out.println("Product added");
		return "redirect:/ViewProducts";
}
	@RequestMapping("/ViewProducts")
	public ModelAndView viewAllProducts() throws JsonGenerationException, JsonMappingException, IOException{
		List<Item> items=addProductService.viewItems();
		ObjectMapper mapper= new ObjectMapper();
		String jsonData= mapper.writeValueAsString(items);
		System.out.println("Json data:"+jsonData);
		return new ModelAndView("ViewAllProducts","items",jsonData);
		
	}
	@RequestMapping("/deleteItem")
	public String deleteItem(@RequestParam("id")int id)
	{
		addProductService.deleteItem(id);
	return "redirect:/ViewProducts";
	}
	@RequestMapping("/updateItem")
	public ModelAndView updateItem(@RequestParam("id")int id)
	{
		System.out.println("id:"+id);
		Item item=addProductService.getItemById(id);
		System.out.println("Item Name:"+item.getItemName());
	return new ModelAndView("toEditItem","item",item);
	}
	@RequestMapping("/updateThis")
	public String updateThis(@RequestParam("itemId")String id, @RequestParam("itemName")String itemName, @RequestParam("description")String description, @RequestParam("price")String price, @RequestParam("category")String category)
	{
		System.out.println("id:"+id);
		int itemId=Integer.parseInt(id);
		Item item=addProductService.getItemById(itemId);
		item.setItemName(itemName);
		item.setDescription(description);
		item.setCategory(category);
		item.setPrice(Float.parseFloat(price));
		addProductService.updateThis(item);
		System.out.println("Item Name:"+item.getItemName());
		
	return "redirect:/ViewProducts";
	}
} 
