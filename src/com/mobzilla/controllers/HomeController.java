package com.mobzilla.controllers;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mobzilla.entity.ForgotBean;
import com.mobzilla.services.HomeService;

@Controller
@SessionAttributes({"cartProducts","userLogin"})
public class HomeController {
	
	@Autowired
	private HomeService service;
	
	@RequestMapping(value="Index.shop")
	public String startIndex() {
		
		
		return "Index";
	}
	
	
	@RequestMapping(value="{brand}home.shop")
	public String populateProducts(@PathVariable("brand") int brand,Model model,@ModelAttribute("userEmail") ForgotBean bean,@ModelAttribute("userLogin") String userLogin){
		System.out.println("home page started");
		
		model.addAttribute("BrandList",service.getAllBrands());
		model.addAttribute("ProductList",service.getProductByBrand(brand));
			
		return "Home";
		
	}
	
	@RequestMapping(value="allProducts.shop")
	public String allProducts(Model model) {
		model.addAttribute("BrandList",service.getAllBrands());
		model.addAttribute("ProductList",service.getAllProducts());	
		return "Home";
	}
	
	@RequestMapping(value="{id}ProductDesc.shop",method=RequestMethod.GET)
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
