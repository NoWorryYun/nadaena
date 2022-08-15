package com.nadaena.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nadaena.service.ChallengeService;

/*테스트*/

@Controller
public class ChallengeController {

	@Autowired
	private ChallengeService challengeService;

	@RequestMapping(value = "/challenge/intro", method = { RequestMethod.GET, RequestMethod.POST })
	public String challenge() {
		System.out.println("challnege/intro");

		return "challenge/intro";
	}
	
	@ResponseBody
	@RequestMapping(value = "/challenge/getIntro", method = { RequestMethod.GET, RequestMethod.POST })
	public String challengeIntro(@RequestBody int challengeNo) {
		System.out.println("challnege/intro_content");
		
		String result = challengeService.introContent(challengeNo);
		
		return result;
	}

	
	
	@RequestMapping(value = "/challenge/joinchallenge", method = { RequestMethod.GET, RequestMethod.POST })
	public String joinchallenge() {
		System.out.println("challnege/intro");
		
		return "redirect:/intro";
	}

	@RequestMapping(value = "/challenge/certify", method = { RequestMethod.GET, RequestMethod.POST })
	public String challenge2() {
		System.out.println("challnege/certify");

		return "challenge/certify";
	}

	@RequestMapping(value = "/challenge/community", method = { RequestMethod.GET, RequestMethod.POST })
	public String challenge3() {
		System.out.println("challnege/community");

		return "challenge/community";
	}

	@RequestMapping(value = "/challenge/review", method = { RequestMethod.GET, RequestMethod.POST })
	public String challenge4() {
		System.out.println("challnege/review");

		return "challenge/review";
	}

	@RequestMapping(value = "/challenge/write", method = { RequestMethod.GET, RequestMethod.POST })
	public String challengeWrite() {
		System.out.println("challenge/challengeWriteForm");

		return "challenge/writechallenge";
	}

	@RequestMapping(value = "/challenge/makechallenge", method = { RequestMethod.GET, RequestMethod.POST })
	public String Create() {
		System.out.println("challenge/makeChallenge");

		return "redirect:/main";
	}

	@RequestMapping(value = "/challenge/board", method = { RequestMethod.GET, RequestMethod.POST })
	public String readBoard() {
		System.out.println("challenge/board");

		return "challenge/readboard";
	}

	@RequestMapping(value = "/challenge/writeboard", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeBoard() {
		System.out.println("challenge/writeboard");

		return "challenge/writeboard";
	}
}
