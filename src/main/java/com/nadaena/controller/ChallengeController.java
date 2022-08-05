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
	
	@RequestMapping(value="/", method = {RequestMethod.GET, RequestMethod.POST})
	public String makeChallenge() {
		System.out.println("challenge/makeChallenge");
		
		return "challenge/makechallenge";
	}
}
