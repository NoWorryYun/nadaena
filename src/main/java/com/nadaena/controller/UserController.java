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
	
	@RequestMapping(value="/join", method = {RequestMethod.GET, RequestMethod.POST})
	public String joinForm() {
		System.out.println("join");
		
		return "user/joinForm";
	} 
}
