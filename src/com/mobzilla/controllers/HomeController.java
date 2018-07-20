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
import com.mobzilla.entity.ProductBean;
import com.mobzilla.services.HomeService;

@Controller
@SessionAttributes({ "cartProducts", "userLogin" })
public class HomeController {

	@Autowired
	private HomeService service;

	@RequestMapping(value = "Index.shop")
	public String startIndex(Model model) {
		try {
			model.addAttribute("BrandList", service.getAllBrands());
			return "Index";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("return", "Index.shop");
			return "errpage";
		}
	}

	@RequestMapping(value = "{brand}home.shop")
	public String populateProducts(@PathVariable("brand") int brand, Model model,
			@ModelAttribute("userEmail") ForgotBean bean) {

		try {
			model.addAttribute("BrandList", service.getAllBrands());
			model.addAttribute("ProductList", service.getProductByBrand(brand));

			return "Home";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("return", Integer.toString(brand) + "home.shop");
			return "errpage";
		}
	}

	@RequestMapping(value = "allProducts.shop")
	public String allProducts(Model model) {

		try {
			model.addAttribute("BrandList", service.getAllBrands());
			model.addAttribute("ProductList", service.getAllProducts());
			return "Home";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("return", "allProducts.shop");
			return "errpage";
		}
	}

	@RequestMapping(value = "{id}ProductDesc.shop", method = RequestMethod.GET)
	public String getProductDesc(@PathVariable("id") int id, Model model) {
		try {
			ProductBean pBean = service.getProductDesc(id);
			model.addAttribute("ProductDesc", pBean);
			model.addAttribute("Images", pBean.getProductImgsUrl().split(";"));
			model.addAttribute("ProductSpecs", service.getProductSpecs(id));

			model.addAttribute("BrandList", service.getAllBrands());

			System.out.println("desc page started image:" + service.getProductDesc(id).getProductImgUrl());
			return "ProductDescription";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("return", Integer.toString(id) + "ProductDesc.shop");
			return "errpage";
		}
	}

	@RequestMapping(value = "aboutUs.shop", method = RequestMethod.GET)
	public String addToCart(Model model) {

		model.addAttribute("BrandList", service.getAllBrands());
		return "AboutUs";
	}

}