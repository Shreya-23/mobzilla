package com.mobzilla.services;

import java.util.Random;

public class CodeGenerator {
	
	 
	   
	    static String generateCode()
	    {
	        System.out.println("Generating password using random() : ");
	        System.out.print("Your new password is : ");
	 
	        // A strong password has Cap_chars, Lower_chars,
	        // numeric value and symbols. So we are using all of
	        // them to generate our password
	        String Capital_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	        String Small_chars = "abcdefghijklmnopqrstuvwxyz";
	        String numbers = "0123456789";
	                String symbols = "!@#$%^&*_=+-/.?<>)";
	 
	 
	        String values = Capital_chars + Small_chars +
	                        numbers + symbols;
	 
	        // Using random method
	        Random rndm_method = new Random();
	 
	        char[] password = new char[7];
	        String pass="";
	        for (int i = 0; i < 7; i++)
	        {
	            // Use of charAt() method : to get character value
	            // Use of nextInt() as it is scanning the value as int
	           /* password[i] =*/
	              pass=pass+values.charAt(rndm_method.nextInt(values.length()));
	 
	        }
	        return pass;
	    }

}
