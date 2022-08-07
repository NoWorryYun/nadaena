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
	
	@RequestMapping(value="/my-point", method = {RequestMethod.GET, RequestMethod.POST})
	public String mypoint() {
		System.out.println("mychallenge");
		
		return "my/my-point"; 
	} 
	
	@RequestMapping(value="/my-event", method = {RequestMethod.GET, RequestMethod.POST})
	public String myevent() {
		System.out.println("mychallenge");
		
		return "my/my-event"; 
	} 
}
