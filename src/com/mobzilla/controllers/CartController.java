package com.mobzilla.controllers;


import java.util.List;

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
	private UserService userService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private HomeService homeService ;
	
	@RequestMapping(value="{pid}addToCart.shop")
	public String addProductToCart(@PathVariable("pid")int productId,HttpSession session,Model model){
		
		if(session.getAttribute("userLogin")!=null)
		{
		LoginBean lbean=(LoginBean)session.getAttribute("userLogin");
		CartBean cart=new CartBean();
		ProductBean product=homeService.getProductDesc(productId);
		cart.setProductId(productId);
		cart.setUserId(lbean.getEmail());
		cart.setProductImage(product.getProductImgUrl());
		cart.setProductName(product.getProductName());
		cart.setUnitPrice(product.getProductPrice());
		
		
		boolean success=cartService.addProduct(cart);
		
		LoginBean login=(LoginBean)session.getAttribute("userLogin");
		List<CartBean> cartList=cartService.getCartProducts(login);
		model.addAttribute("cartProducts",cartList);
		model.addAttribute("grandTotal",cartService.getTotal(cartList));
		
		return "Cart";
		}
		else 
			return "Login";
	}
	
	
	@RequestMapping(value="{pid}deleteFromCart.shop")
	public String deleteProductFromCart(@PathVariable("pid")int productId,HttpSession session,Model model){
		
		if(session.getAttribute("userLogin")!=null)
		{
		LoginBean lbean=(LoginBean)session.getAttribute("userLogin");
		boolean success=cartService.deleteProduct(lbean,productId);
		
		LoginBean login=(LoginBean)session.getAttribute("userLogin");
		List<CartBean> cartList=cartService.getCartProducts(login);
		model.addAttribute("cartProducts",cartList);
		model.addAttribute("grandTotal",cartService.getTotal(cartList));
		
		return "Cart";
		}
		else 
			return "Login";
	}
	
	
	
	
	@RequestMapping(value="showCart.shop")
	public String showCart(Model model,HttpSession session) {
		
		LoginBean login=(LoginBean)session.getAttribute("userLogin");
		if(login!=null) {
		List<CartBean> cartList=cartService.getCartProducts(login);
		model.addAttribute("cartProducts",cartList);
		model.addAttribute("grandTotal",cartService.getTotal(cartList));
		return "Cart";
		}
		else
		return "Login";
	}
	
	@RequestMapping(value="order.shop")
	public String orderCartProducts(Model model,HttpSession session) {
		
		LoginBean login=(LoginBean)session.getAttribute("userLogin");
		
		Boolean success=cartService.orderProducts(login);
		model.addAttribute("BrandList",homeService.getAllBrands());
		model.addAttribute("ProductList",homeService.getAllProducts());	
		
		return "Home";
	}
	
	@RequestMapping(value="orderDetails.shop")
	public String orderDetails(Model model,HttpSession session) {
		
		LoginBean login=(LoginBean)session.getAttribute("userLogin");
		if(login!=null) {
		List<CartBean> cartList=cartService.getCartProducts(login);
		model.addAttribute("cartProducts",cartList);
		model.addAttribute("grandTotal",cartService.getTotal(cartList));
		model.addAttribute("address",userService.getUserAddress(login));
		return "OrderDetails";
		}
		else
		return "Home";
	}
	

}
