package com.mobzilla.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mobzilla.entity.AddressBean;
import com.mobzilla.entity.ForgotBean;
import com.mobzilla.entity.LoginBean;
import com.mobzilla.entity.UserBean;
import com.mobzilla.services.HomeService;
import com.mobzilla.services.UserService;

@Controller
@SessionAttributes({"personalDetails","userEmail"})

public class UserController {
	
	@Autowired
	private UserService service;
	
	@Autowired
	private HomeService homeService;
	
	@RequestMapping(value="LoginUser.shop")
	public String loginUser(LoginBean login, Model model) {
		
		if(service.validate(login)) {
			System.out.println("user found------------");
			model.addAttribute("BrandList",homeService.getAllBrands());
			model.addAttribute("ProductList",homeService.getAllProducts());
			return "Home";
		}
		else {
			System.out.println("user not found------------");
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
	public String addAddress(@ModelAttribute("personalDetails") UserBean user,AddressBean address,Model model) {
		
		System.out.println(user.getUserEmail());
		System.out.println(address.getAddressLine1());
		address.setUser(user.getUserEmail());
		Boolean isRegistered=service.registerUser(user,address);
		if(isRegistered) {
			return "Login";
		}
		else {
			
			model.addAttribute("BrandList",homeService.getAllBrands());
			model.addAttribute("ProductList",homeService.getAllProducts());
			return "Home";
		}
	}
	
	@RequestMapping(value="forgotPassword.shop")
	public String forgetPassPage() {
		return "ForgotPassword";
	}
	
	@RequestMapping(value="newPass.shop")
	public String forgotPassword(UserBean user,Model model) {
		
		// fBean=new ForgotBean();
		
		String email=service.matchDetails(user);
		if(email!=null)
		{
			ForgotBean bean=new ForgotBean();
			bean.setEmail(email);
			model.addAttribute("userEmail", bean);
			return "ReEnterPass";
		}
		else {
			model.addAttribute("isPhoneCorrect","false");
			return "ForgotPassword";
		}
	}
	
	@RequestMapping(value="ChangePass.shop")
	public String changePassword(@ModelAttribute("userEmail") ForgotBean bean,Model model) {
		
		if(service.changePassword(bean))
		{
			model.addAttribute("passChaged","true");
			return "Login";
		}
		else {
			
			model.addAttribute("userEmail", bean);
			model.addAttribute("doPassMatch","false");
			return "ReEnterPass";
		}
	}
}
