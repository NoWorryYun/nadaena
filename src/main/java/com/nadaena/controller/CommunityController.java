package com.nadaena.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nadaena.service.CommunityService;
import com.nadaena.vo.BoardVo;

@Controller
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	
	
	@RequestMapping(value = "/challenge/communityList", method = { RequestMethod.GET, RequestMethod.POST })
	public String communityList(Model modle,
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword,
			@RequestParam(value = "category", required = false, defaultValue = "0") Integer category) {
		System.out.println("CommunityController > communityList");
		
		BoardVo boardVo = new BoardVo();
		boardVo.setKeyword(keyword);
		boardVo.setCategory(category);
		Map<String, Object> cuMap = communityService.CommunityList(boardVo);

		modle.addAttribute("cuMap", cuMap);
		
		System.out.println("controller" +cuMap);
		
		return "challenge/community";
	}
	
	//@PathVariable("challengeNo") int challengeNo
}

