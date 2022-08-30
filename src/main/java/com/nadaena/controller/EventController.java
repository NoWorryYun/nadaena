package com.nadaena.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nadaena.service.EventService;
import com.nadaena.vo.MainTitleVo;

@Controller
public class EventController {
	
	@Autowired
	EventService eventService; 
	/*
	@RequestMapping(value="event", method = {RequestMethod.GET, RequestMethod.POST})
	public String main(Model model) {
		System.out.println("EventController>main");
		
		List<MainTitleVo> eventList = eventService.eventListForm();
		
		model.addAttribute("eventList", eventList);
		
		return "event/main";
	}
	*/
	
	@RequestMapping(value="/event", method = {RequestMethod.GET, RequestMethod.POST})
	public String main(Model model) {
		System.out.println("EventController>main");
		
		Map<String, Object> evMap = eventService.eventListForm();
		
		model.addAttribute("evMap", evMap);
		System.out.println("EventController " +evMap);
		
		return "event/main";
	}
	

	@RequestMapping(value="/event/read")
	public String read() {
		System.out.println(" eventCtrl > read");
		
		return "event/read";
		
	}

	@RequestMapping(value="/event/uploadForm")
	public String uploadForm() {
		System.out.println(" eventCtrl > uploadForm");
		
		return "event/uploadForm";
		
	}
	
}
