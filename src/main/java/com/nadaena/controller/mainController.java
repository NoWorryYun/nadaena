package com.nadaena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class mainController {
	
	@RequestMapping(value="/test", method= {RequestMethod.GET, RequestMethod.POST})
	public String test() {
		System.out.println("testController");
		
		
		return "main/test";
	}
	
	@RequestMapping(value="/header", method = {RequestMethod.GET, RequestMethod.POST})
	public String header() {
		System.out.println("header");
		
		return "aside/header";
	}
	
	@RequestMapping(value="/layer", method = {RequestMethod.GET, RequestMethod.POST})
	public String layer() {
		System.out.println("layer");
		
		return "challenge/layer";
	}
}
