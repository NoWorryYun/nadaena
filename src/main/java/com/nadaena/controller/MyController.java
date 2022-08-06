package com.nadaena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyController {

	@RequestMapping(value="/my-review", method = {RequestMethod.GET, RequestMethod.POST})
	public String myreview() {
		System.out.println("myreview");
		
		return "my/my-review"; 
	} 
	
	@RequestMapping(value="/my-challenge", method = {RequestMethod.GET, RequestMethod.POST})
	public String mychallenge() {
		System.out.println("mychallenge");
		
		return "my/my-challenge"; 
	} 
}
