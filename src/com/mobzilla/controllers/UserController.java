package com.mobzilla.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mobzilla.entity.AddressBean;
import com.mobzilla.entity.LoginBean;
import com.mobzilla.entity.UserBean;
import com.mobzilla.services.UserService;

@Controller
@SessionAttributes({"personalDetails"})
public class UserController {
	
	@Autowired
	private UserService service;
	
	@RequestMapping(value="LoginUser.shop")
	public String loginUser(LoginBean login, Model model) {
		
		if(service.validate(login)) {
			return "Home";
		}
		else {
			model.addAttribute("userNotFound","true");
			return "Login";
		}
	}
	
	@RequestMapping(value="LoginPage.shop")
	public String loginPage(Model model) {
		
		return "Login";
	}
	
	@RequestMapping(value="RegisterUser.shop")
	public String registerUser(UserBean user,Model model) {
		
		System.out.println(user.getUserLastName());
		model.addAttribute("personalDetails",user);
	/*	Boolean isRegistered=service.registerUser(user);*/
		/*if(isRegistered) {
			return "Login";
		}
		else {
			return "Home";
		}*/
		return "Address";
	}
	
	@RequestMapping(value="AddAddress.shop")
	public String addAddress(@ModelAttribute("personalDetails") UserBean user,AddressBean address) {
		
		System.out.println(user.getUserEmail());
		System.out.println(address.getAddressLine1());
		address.setUser(user.getUserEmail());
		Boolean isRegistered=service.registerUser(user,address);
		if(isRegistered) {
			return "Login";
		}
		else {
			return "Home";
		}
	}
	
	@RequestMapping(value="forgotPassword.shop")
	public String forgotPassword() {return null;}
}
