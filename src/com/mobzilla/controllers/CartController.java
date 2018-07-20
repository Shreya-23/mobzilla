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

import com.mobzilla.entity.AddressBean;
import com.mobzilla.entity.CartBean;
import com.mobzilla.entity.LoginBean;
import com.mobzilla.entity.ProductBean;
import com.mobzilla.entity.TotalBean;
import com.mobzilla.entity.UserBean;
import com.mobzilla.services.CartService;
import com.mobzilla.services.HomeService;
import com.mobzilla.services.UserService;

@Controller
@SessionAttributes({ "userLogin", "cartProducts", "grandTotal", "address" })
public class CartController {

	@Autowired
	private UserService userService;

	@Autowired
	private CartService cartService;

	@Autowired
	private HomeService homeService;

	
	//Takes productId from path variable and email from session and to CartService to add into cart_table
	@RequestMapping(value = "{pid}addToCart.shop")
	public String addProductToCart(@PathVariable("pid") int productId, HttpSession session, Model model) {
		try {
			//check if user is login
			if (session.getAttribute("userLogin") != null) {
				LoginBean lbean = (LoginBean) session.getAttribute("userLogin");
				CartBean cart = new CartBean();
				ProductBean product = homeService.getProductDesc(productId);
				cart.setProductId(productId);
				cart.setUserId(lbean.getEmail());
				cart.setProductImage(product.getProductImgUrl());
				cart.setProductName(product.getProductName());
				cart.setUnitPrice(product.getProductPrice());
			//Add to cart 
				if (cartService.addProduct(cart))
				{
					LoginBean login = (LoginBean) session.getAttribute("userLogin");
					List<CartBean> cartList = cartService.getCartProducts(login);
					TotalBean total = new TotalBean();
					total.setTotal(cartService.getTotal(cartList));
					model.addAttribute("cartProducts", cartList);
					model.addAttribute("grandTotal", total);
					
					model.addAttribute("BrandList", homeService.getAllBrands());
					
					return "Cart";

				}
				else{
					model.addAttribute("BrandList", homeService.getAllBrands());
					return "Cart";
				}

			}
			else{
				return "Login";
			}
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("return", "showCart.shop");
			return "errpage";
		}
	}

	
	//delete item from cart
	@RequestMapping(value = "{pid}deleteFromCart.shop")
	public String deleteProductFromCart(@PathVariable("pid") int productId, HttpSession session, Model model) {

		try {//check if user logged in
			if (session.getAttribute("userLogin") != null) {
				LoginBean lbean = (LoginBean) session.getAttribute("userLogin");
				//delete item
				if (cartService.deleteProduct(lbean, productId)) {
					LoginBean login = (LoginBean) session.getAttribute("userLogin");
					List<CartBean> cartList = cartService.getCartProducts(login);
					//re-populate cart list
					TotalBean total = new TotalBean();
					total.setTotal(cartService.getTotal(cartList));
					model.addAttribute("cartProducts", cartList);
					model.addAttribute("grandTotal", total);
					model.addAttribute("BrandList", homeService.getAllBrands());
					
					return "Cart";
				} else {
					model.addAttribute("BrandList", homeService.getAllBrands());
					return "Cart";
				}

			} else{
				return "Login";
			}
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("return", "showCart.shop");
			return "errpage";
		}
	}

	//shows item in cart
	@RequestMapping(value = "showCart.shop")
	public String showCart(Model model, HttpSession session) {
		try {
			//check if login
			LoginBean login = (LoginBean) session.getAttribute("userLogin");
			if (login != null) {
				List<CartBean> cartList = cartService.getCartProducts(login);
				TotalBean total = new TotalBean();
				total.setTotal(cartService.getTotal(cartList));
				model.addAttribute("cartProducts", cartList);
				model.addAttribute("grandTotal", total);
				model.addAttribute("BrandList", homeService.getAllBrands());
				
				return "Cart";
			} else{
				
				model.addAttribute("BrandList", homeService.getAllBrands());
				return "Login";
			}
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("return", "showCart.shop");
			return "errpage";
		}
	}

	@RequestMapping(value = "order.shop")
	public String orderCartProducts(Model model, HttpSession session) {

		try {

			LoginBean login = (LoginBean) session.getAttribute("userLogin");
			System.out.println("-------total-------");
			/* System.out.println(total.getTotal()); */
			model.addAttribute("cartProducts", session.getAttribute("cartProducts"));
			model.addAttribute("grandTotal", session.getAttribute("grandTotal"));
			model.addAttribute("address", session.getAttribute("address"));

			Boolean success = cartService.orderProducts(login);
			model.addAttribute("BrandList", homeService.getAllBrands());

			return "BillDetails";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("return", "showCart.shop");
			return "errpage";
		}
	}

	@RequestMapping(value = "orderDetails.shop")
	public String orderDetails(Model model, HttpSession session) {

		try {
			LoginBean login = (LoginBean) session.getAttribute("userLogin");
			if (login != null) {
				List<CartBean> cartList = cartService.getCartProducts(login);
				TotalBean total = new TotalBean();
				total.setTotal(cartService.getTotal(cartList));
				model.addAttribute("cartProducts", cartList);
				model.addAttribute("grandTotal", total);
				model.addAttribute("address", userService.getUserAddress(login));
				model.addAttribute("BrandList", homeService.getAllBrands());
				
				return "OrderDetails";
			} else
				return "Home";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("return", "orderDetails.shop");
			return "errpage";
		}
	}

	@RequestMapping(value = "payment.shop")
	public String paymentPage() {

		System.out.println("pay");
		return "payment";
	}

	@RequestMapping(value = "Thankyou.shop")
	public String thanksPage() {

		System.out.println("pay");
		return "Thankyou";
	}

}
