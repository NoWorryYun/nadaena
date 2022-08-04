package com.nadaena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyController {

	@RequestMapping(value="/my-review", method = {RequestMethod.GET, RequestMethod.POST})
	public String layer() {
		System.out.println("login");
		
		return "my/my-review";
	} 
}
