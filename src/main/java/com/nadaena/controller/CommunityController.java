package com.nadaena.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nadaena.service.CommunityService;

@Controller
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	
	
	@RequestMapping(value = "/challenge/communityList", method = { RequestMethod.GET, RequestMethod.POST })
	public String communityList(Model modle) {
		System.out.println("CommunityController > communityList");
		
		Map<String, Object> cuMap = communityService.CommunityList();

		modle.addAttribute("cuMap", cuMap);
		
		return "challenge/community";
	}
	
	//@PathVariable("challengeNo") int challengeNo
}

