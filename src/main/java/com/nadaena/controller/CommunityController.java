package com.nadaena.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nadaena.service.CommunityService;
import com.nadaena.vo.BoardVo;

@Controller
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	
	
	@RequestMapping(value = "/challenge/{challengeNo}/communityList", method = { RequestMethod.GET, RequestMethod.POST })
	public String communityList(Model model,
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword,
			@RequestParam(value = "category", required = false, defaultValue = "0") Integer category,
			@PathVariable("challengeNo") int challengeNo) {
		//System.out.println("CommunityController > communityList");
		
		BoardVo boardVo = new BoardVo();
		boardVo.setKeyword(keyword);
		boardVo.setCategory(category);
		boardVo.setChallengeNo(challengeNo);
		
		Map<String, Object> cuMap = communityService.CommunityList(boardVo);

		model.addAttribute("cuMap", cuMap);
		
		System.out.println("controller" +cuMap);
		
		return "challenge/community";
	}
	

	@RequestMapping(value = "/challenge/{challengeNo}/board/{boardNo}", method = { RequestMethod.GET, RequestMethod.POST })
	public String readBoard(Model model, @PathVariable("challengeNo") int challengeNo,
										 @PathVariable("boardNo") int boardNo) {
		
		BoardVo boardVo = new BoardVo();
		boardVo.setChallengeNo(challengeNo);
		boardVo.setBoardNo(boardNo);
		
		Map<String, Object> boardMap = communityService.comuInfo(boardVo);
		
		model.addAttribute("boardMap", boardMap);
		
		System.out.println("boardMap " +boardMap);
		
		return "challenge/readboard";
	}
	
	/*
	@RequestMapping(value = "/challenge/{challengeNo}/writeboard", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeBoard() {
		System.out.println("challenge/writeboard");

		return "challenge/writeboard";
	}

	@RequestMapping(value = "/challenge/{challengeNo}/review", method = { RequestMethod.GET, RequestMethod.POST })
	public String challenge4(@PathVariable("challengeNo") int challengeNo) {
		System.out.println("challnege/review");

		return "challenge/review";
	}
	///{challengeNo}
	//@PathVariable("challengeNo") int challengeNo
	 
	 */
}

