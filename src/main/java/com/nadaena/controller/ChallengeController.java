package com.nadaena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/*테스트*/

@Controller
public class ChallengeController {
	
	@RequestMapping(value="/challenge/main", method = {RequestMethod.GET, RequestMethod.POST})
	public String challenge() {
		System.out.println("challnege/main");
		
		return "challenge/main";
	}
	
	@RequestMapping(value="/challenge/main2", method = {RequestMethod.GET, RequestMethod.POST})
	public String challenge2() {
		System.out.println("challnege/main");
		
		return "challenge/main2";
	}
	
	@RequestMapping(value="/challenge/main3", method = {RequestMethod.GET, RequestMethod.POST})
	public String challenge3() {
		System.out.println("challnege/main");
		
		return "challenge/main3";
	}
	
	@RequestMapping(value="/challenge/main4", method = {RequestMethod.GET, RequestMethod.POST})
	public String challenge4() {
		System.out.println("challnege/main");
		
		return "challenge/main4";
	}
	
	@RequestMapping(value="/challenge/write", method = {RequestMethod.GET, RequestMethod.POST})
	public String makeChallenge() {
		System.out.println("challenge/makeChallenge");
		
		return "challenge/makechallenge";
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
