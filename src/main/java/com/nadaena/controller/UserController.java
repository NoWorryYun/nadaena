package com.nadaena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

	@RequestMapping(value="/login", method = {RequestMethod.GET, RequestMethod.POST})
	public String loginForm() {
		System.out.println("login");
		
		return "user/loginForm";
	} 
	
	@RequestMapping(value="/joisn", method = {RequestMethod.GET, RequestMethod.POST})
	public String joinForm() {
		System.out.println("join");
		
		return "user/joinForm";
	} 
	@RequestMapping(value="/modify", method = {RequestMethod.GET, RequestMethod.POST})
	public String modifyForm() {
		System.out.println("modify");
		
		return "user/modifyForm";
	} 
	@RequestMapping(value="/find", method = {RequestMethod.GET, RequestMethod.POST})
	public String findForm() {
		System.out.println("find");
		
		return "user/findForm";
	} 
	  
	@RequestMapping(value="/test12", method = {RequestMethod.GET, RequestMethod.POST}) 
	public String test1() { 
		System.out.println("test12");
	  
	    return "user/test12"; }
	 
}
