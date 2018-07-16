package com.mobzilla.controllers;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mobzilla.entity.CartBean;
import com.mobzilla.entity.LoginBean;
import com.mobzilla.entity.ProductBean;
import com.mobzilla.entity.UserBean;
import com.mobzilla.services.CartService;
import com.mobzilla.services.HomeService;
import com.mobzilla.services.UserService;

@Controller
@SessionAttributes({"userLogin"})
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private HomeService homeService ;
	
	@RequestMapping(value="{pid}addToCart.shop")
	public String addProductToCart(@PathVariable("pid")int productId,HttpSession session){
		
		if(session.getAttribute("userLogin")!=null)
		{
		LoginBean lbean=(LoginBean)session.getAttribute("userLogin");
		CartBean cart=new CartBean();
		ProductBean product=homeService.getProductDesc(productId);
		cart.setProductId(productId);
		cart.setUserId(lbean.getEmail());
		cart.setProductImage(product.getProductImgUrl());
		cart.setProductName(product.getProductName());
		cart.setTotalPrice(product.getProductPrice());
		
		boolean success=cartService.addProduct(cart);
		
		return "Home";
		}
		else 
			return "Login";
	}
	
	@RequestMapping(value="showCart.shop")
	public String showCart(Model model,HttpSession session) {
		
		LoginBean login=(LoginBean)session.getAttribute("userLogin");
		if(login!=null) {
		model.addAttribute("cartProducts",cartService.getCartProducts(login));
		return "Cart";
		}
		else
		return "Login";
	}
	
	@RequestMapping(value="order.shop")
	public String orderCartProducts(Model model,HttpSession session) {
		
		LoginBean login=(LoginBean)session.getAttribute("userLogin");
		
		Boolean success=cartService.orderProducts(login);
		
		return "Home";
	}

}
