package com.nadaena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/*테스트*/

@Controller
public class MainController {

	
	@RequestMapping(value="/main", method = {RequestMethod.GET, RequestMethod.POST})
	public String main() {
		System.out.println("main");
		
		return "main/mainTitle";
	}
	
	@RequestMapping(value="/main/maintest", method = {RequestMethod.GET, RequestMethod.POST})
	public String maintest2() {
		System.out.println("maintest");
		
		return "main/test";
	}
}
