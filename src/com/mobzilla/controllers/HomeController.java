package com.mobzilla.controllers;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mobzilla.services.HomeService;

@Controller
public class HomeController {
	
	@Autowired
	private HomeService service;
	
	@RequestMapping(value="home.shop")
	public String populateProducts(Model model){
		System.out.println("home page started");
		model.addAttribute("ProductList",service.getAllProducts());
		return "Home";
		
	}

}
