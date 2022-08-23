package com.nadaena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyController {
	
	@RequestMapping(value="my/my-buylist", method = {RequestMethod.GET, RequestMethod.POST})
	public String mybuylist() {
		System.out.println("mybuylist");
		 
		return "my/my-buylist"; 
	} 
	
	@RequestMapping(value="my/my-bookmark", method = {RequestMethod.GET, RequestMethod.POST})
	public String mybookmark() {
		System.out.println("mybookmark");
		
		return "my/my-bookmark"; 
	} 
}
