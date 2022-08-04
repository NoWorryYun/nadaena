package com.nadaena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LayerController {

	@RequestMapping(value="/1", method= {RequestMethod.GET, RequestMethod.POST})
	public String layer01() {
		System.out.println("1");
		
		
		return "layer/layer01";
	}
	
	

	@RequestMapping(value="/21", method= {RequestMethod.GET, RequestMethod.POST})
	public String layer021() {
		System.out.println("21");
		
		
		return "layer/layer021";
	}
	
	@RequestMapping(value="/22", method= {RequestMethod.GET, RequestMethod.POST})
	public String layer022() {
		System.out.println("22");
		
		
		return "layer/layer022";
	}
	
	@RequestMapping(value="/3", method= {RequestMethod.GET, RequestMethod.POST})
	public String layer03() {
		System.out.println("3");
		
		
		return "layer/layer03";
	}
	
}
