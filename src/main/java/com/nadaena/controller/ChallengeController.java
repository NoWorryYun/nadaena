package com.nadaena.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nadaena.service.ChallengeService;


/*테스트*/

@Controller
public class ChallengeController {
	
	@Autowired
	private ChallengeService challengeServices;
	
	@RequestMapping(value="/challenge/intro", method = {RequestMethod.GET, RequestMethod.POST})
	public String challenge() {
		System.out.println("challnege/intro");
		
		return "challenge/intro";
	}
	
	@RequestMapping(value="/challenge/certify", method = {RequestMethod.GET, RequestMethod.POST})
	public String challenge2() {
		System.out.println("challnege/certify");
		
		return "challenge/certify";
	}
	
	@RequestMapping(value="/challenge/community", method = {RequestMethod.GET, RequestMethod.POST})
	public String challenge3() {
		System.out.println("challnege/community");
		
		return "challenge/community";
	}
	
	@RequestMapping(value="/challenge/review", method = {RequestMethod.GET, RequestMethod.POST})
	public String challenge4() {
		System.out.println("challnege/review");
		
		return "challenge/review";
	}
	
	@RequestMapping(value="/challenge/write", method = {RequestMethod.GET, RequestMethod.POST})
	public String challengeWrite() {
		System.out.println("challenge/challengeWriteForm");
		
		return "challenge/makechallenge";
	}
	
	@RequestMapping(value="/challenge/makechallenge", method = {RequestMethod.GET, RequestMethod.POST})
	public String Create() {
		System.out.println("challenge/makeChallenge");
		
		return "redirect:/main";
	}

	@RequestMapping(value="/challenge/board", method = {RequestMethod.GET, RequestMethod.POST})
	public String readBoard() {
		System.out.println("challenge/makeChallenge");
		
		return "challenge/readboard";
	}
	
	@RequestMapping(value="/challenge/writeboard", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeBoard() {
		System.out.println("challenge/makeChallenge");
		
		return "challenge/writeboard";
	}
	
	/* 테스트 */
	@RequestMapping(value="challenge/read")
	public String read() {
		
		return "challenge/read";
	}
	
}
