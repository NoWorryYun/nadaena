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


	@RequestMapping(value="event/read")
	public String read() {
		System.out.println(" eventCtrl > read");
		
		return "event/read";
		
	}

	@RequestMapping(value="event/uploadForm")
	public String uploadForm() {
		System.out.println(" eventCtrl > uploadForm");
		
		return "event/uploadForm";
		
	}
	
}
