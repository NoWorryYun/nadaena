package com.nadaena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/*테스트*/

@Controller
public class MainController {
	
	@RequestMapping(value="/layer", method = {RequestMethod.GET, RequestMethod.POST})
	public String layer() {
		System.out.println("layer");
		
		return "challenge/layer";
	}
}
