package com.mobzilla.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mobzilla.entity.UserBean;
import com.mobzilla.services.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService service;
	
	@RequestMapping(value="LoginPage.shop")
	public String loginUser(Model model) {
		
		return "Login";
	}
	
	@RequestMapping(value="Register.shop")
	public String registerUser(UserBean user,Model model) {
		
		Boolean isRegistered=service.registerUser(user);
		if(isRegistered) {
			return "Login";
		}
		else {
			return "Home";
		}
	}
}
