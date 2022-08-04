package com.nadaena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/*테스트*/

@Controller
public class MainController {
	
	@RequestMapping(value="/challenge/main", method = {RequestMethod.GET, RequestMethod.POST})
	public String challenge() {
		System.out.println("challnege/main");
		
		return "challenge/main";
	}
	
	@RequestMapping(value="/main", method = {RequestMethod.GET, RequestMethod.POST})
	public String main() {
		System.out.println("main");
		
		return "main/mainTitle";
	}
}
