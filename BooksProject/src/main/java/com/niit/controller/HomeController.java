package com.niit.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Customer;
import com.niit.model.Item;
import com.niit.service.ActionAdventureServiceImpl;
import com.niit.service.AddProductService;
import com.niit.service.CustomerService;

@Controller
public class HomeController {
	@Autowired
	AddProductService addProductService;
	@Autowired
	CustomerService customerService;
	//this is first home page request mapping
	@RequestMapping("/")
	public ModelAndView homepage()
	{
		System.out.println("home() method called");
		return new ModelAndView("home");
	}
	// this is for sign in page ,if user click the button
	@RequestMapping("/signIn")
	public ModelAndView signin()
	{
		System.out.println("signIn() method called");
		return new ModelAndView("signIn");
	}
	//this is for signup, it goes to controller with a spring forms
	/*@RequestMapping("/signUp")
	public ModelAndView signup()
	{
		Customer customer=new Customer();
		System.out.println("signup() method called");
		return new ModelAndView("signUp","customerObj",customer);
	}*/
	//in this the object first map with the object name
	@RequestMapping("/CustomerLogin")
	public ModelAndView customerLogin(Principal principal) throws JsonGenerationException, JsonMappingException, IOException
	{
		System.out.println("username:"+principal.getName());
		List<Item> items=addProductService.viewItems();
		ObjectMapper mapper= new ObjectMapper();
		String jsonData= mapper.writeValueAsString(items);
		System.out.println("Json data:"+jsonData);
		return new ModelAndView("customerHome","items",jsonData);
	}
	@RequestMapping("/viewSelectedItem")
	public ModelAndView viewSelectedItem(@RequestParam("id") String id)
	{
		Item item=addProductService.getItemById(Integer.parseInt(id));
		return new ModelAndView("customerSelectedItem","item",item);
	}
	@RequestMapping("/AdminLogin")
	public ModelAndView adminLogin(Principal principal)
	{
		System.out.println("username:"+principal.getName());
		return new ModelAndView("adminHome");
	}
	/*@RequestMapping("/Register")
	public ModelAndView gd(@Valid@ModelAttribute("customerObj") Customer customer,BindingResult bindingresult)
	{
		
		if(bindingresult.hasErrors())
		{
			return new ModelAndView("signUp");
		}
		System.out.println("Username:"+customer.getUsername());
		System.out.println("Password:"+customer.getPassword());
		customerService.addCustomer(customer);
		return new ModelAndView("signUp");
		
	}*/
	@RequestMapping("/login")
	public String loginMethod()
	{
		return "login";
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request)
	{
		request.getSession().invalidate();
		System.out.println("logout page called");

		return "logout";
		
	}

	@RequestMapping("/aboutUs")
	public ModelAndView aboutUs()
	{
		System.out.println("Redirected to BookStore.com about us page");
		return new ModelAndView("aboutUs");
		
	}
	
	@RequestMapping("/contactUs")
	public ModelAndView contactUs()
	{
		System.out.println("redirected to BookStore.com contact us page");
		return new ModelAndView("contactUs");
		
	}
	@RequestMapping("/discount")
	public ModelAndView discount()
	{
		System.out.println("redirected to BookStore.com discount page");
		return new ModelAndView("discount");
		
	}

	@Autowired
	ActionAdventureServiceImpl actionAdventureServiceImpl;
	@RequestMapping("/toViewCategoryWise")
	public ModelAndView aaCategory(String category) throws JsonGenerationException, JsonMappingException, IOException
	{
		List<Item> list = actionAdventureServiceImpl.getElementByCategory(category);
		ObjectMapper mapper= new ObjectMapper();
		String listJSON=mapper.writeValueAsString(list);
		return new ModelAndView("CategoryView","categoryWiseList",listJSON);
		
	}
	

}

