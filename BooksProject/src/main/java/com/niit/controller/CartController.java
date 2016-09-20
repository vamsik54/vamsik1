package com.niit.controller;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Customer;
import com.niit.model.Item;
import com.niit.service.AddProductService;
import com.niit.service.CartItemService;
import com.niit.service.CustomerService;

@Controller
public class CartController {
	@Autowired
	CartItemService cartItemService;
	@Autowired
	AddProductService addProductService;
	@Autowired
	CustomerService customerService;
	@RequestMapping("/addtocart")
	public String addItem(@RequestParam("id")String id)
	{
		
		String loggedInUserName=SecurityContextHolder.getContext().getAuthentication().getName();
		Customer customer=customerService.getCustomerByName(loggedInUserName);
		Cart cart=customer.getCart();
		Item item = addProductService.getItemById(Integer.parseInt(id));
		CartItem cartItem=new CartItem();
		cartItem.setCart(cart);
		cartItem.setItem(item);
		cartItem.setQuantity(1);
		cartItem.setImage(item.getItemId());
		cartItem.setTotalPrice(item.getPrice());
		cartItemService.addCartItem(cartItem);
		System.out.println("item added to cart and i am in cart controller");
		return "redirect:/CustomerLogin";
	}
	@RequestMapping("/viewCart")
	public ModelAndView displayCart() throws JsonGenerationException, JsonMappingException, IOException
	{
		System.out.println("displaying cart items");
		String loggedInUserName=SecurityContextHolder.getContext().getAuthentication().getName();
		Customer customer=customerService.getCustomerByName(loggedInUserName);
		Cart cart=customer.getCart();
		int cartId = cart.getCartId();
		List<CartItem> list = cartItemService.getCartItemByCartId(cartId);
		System.out.println(list);
		ObjectMapper mapper = new ObjectMapper();
		String listJSON = mapper.writeValueAsString(list);
		System.out.println("To print all cart items"+listJSON);
		return new ModelAndView("cartProducts","viewCartKey",listJSON);
	}

	// @RequestMapping("/deleteCartItem")
}
