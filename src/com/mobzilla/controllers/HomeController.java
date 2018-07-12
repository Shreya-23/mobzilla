package com.mobzilla.controllers;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mobzilla.services.HomeService;

@Controller
@SessionAttributes("cartProducts")
public class HomeController {
	
	@Autowired
	private HomeService service;
	
	@RequestMapping(value="home.shop")
	public String populateProducts(Model model){
		System.out.println("home page started");
		
		model.addAttribute("BrandList",service.getAllBrands());
		model.addAttribute("ProductList",service.getAllProducts());
		
		return "Home";
		
	}
	
	@RequestMapping(value="/id={id}/ProductDesc.shop",method=RequestMethod.GET)
	public String getProductDesc(@PathVariable("id") int id, Model model){
		
		model.addAttribute("ProductDesc",service.getProductDesc(id));
		System.out.println("desc page started image:"+service.getProductDesc(id).getProductImgUrl());
		return "ProductDesc";
	}
	
	@RequestMapping(value="/{id}/addToCart.shop",method=RequestMethod.GET)
	public String addToCart(@PathVariable("id") int id, Model model){
		
		model.addAttribute("cartProducts",service.getProductDesc(id));
		System.out.println("desc page started image:"+service.getProductDesc(id).getProductImgUrl());
		return "ProductDesc";
	}

}
