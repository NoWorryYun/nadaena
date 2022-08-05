package com.nadaena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {
	
	@RequestMapping(value="event")
	public String main() {
		System.out.println(" event Main Ctrl");
		
		return "event/main";
	}

}
