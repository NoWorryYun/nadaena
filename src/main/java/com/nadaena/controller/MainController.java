package com.nadaena.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nadaena.service.MainTitleService;
import com.nadaena.vo.MainTitleVo;


@Controller
public class MainController {

	@Autowired
	MainTitleService mainTitleService;
	
	@RequestMapping(value="/main", method = {RequestMethod.GET, RequestMethod.POST})
	public String main(Model model) {
		System.out.println("main");
		
		List<MainTitleVo> eventList = mainTitleService.eventList();
		List<MainTitleVo> popularityList = mainTitleService.popularityList();
		
		model.addAttribute(eventList);
		model.addAttribute(popularityList);
		
		return "main/mainTitle";
	}
	
	@RequestMapping(value="/main/maintest", method = {RequestMethod.GET, RequestMethod.POST})
	public String maintest2() {
		System.out.println("maintest");
		
		return "main/test";
	}
	
	
	
	
}
