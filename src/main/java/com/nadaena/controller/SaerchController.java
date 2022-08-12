package com.nadaena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SaerchController {
	
	
	@RequestMapping(value="/search/searchForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String saerch() {
		System.out.println("search");
		
		return "search/searchForm";
	}
	
	@RequestMapping(value="/search/searchMain", method = {RequestMethod.GET, RequestMethod.POST})
	public String searchmain() {
		System.out.println("searchmain");
		
		return "search/searchMain";
	}
	
	@RequestMapping(value="/search/test", method = {RequestMethod.GET, RequestMethod.POST})
	public String searchtest() {
		System.out.println("searchtest");
		
		return "search/test";
	}

}
