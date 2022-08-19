package com.nadaena.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nadaena.service.MainTitleService;


@Controller
public class MainController {

	@Autowired
	MainTitleService mainTitleService;
	
	@RequestMapping(value="/main", method = {RequestMethod.GET, RequestMethod.POST})
	public String main(Model model) {
		System.out.println("MainController>main");
		
		Map<String, Object> evMap = mainTitleService.eventList();
		
		model.addAttribute("evMap", evMap);
		model.addAttribute("popularityList", evMap);
		model.addAttribute("limtiTimeList", evMap);
		
		return "main/mainTitle";
	}
	
	@RequestMapping(value="/main2", method = {RequestMethod.GET, RequestMethod.POST})
	public String main2(Model model) {
		System.out.println("main2");
		
		return "main/mainTitle";
	}
	
	
	
	
}
