package com.nadaena.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nadaena.service.ChallengeService;
import com.nadaena.vo.ChallengeVo;

/*테스트*/

@Controller
public class ChallengeController {

	@Autowired
	private ChallengeService challengeService;
	
	//intro
	@RequestMapping(value = "/challenge/{challengeNo}/intro", method = { RequestMethod.GET, RequestMethod.POST })
	public String challenge(@PathVariable("challengeNo") int challengeNo, Model model) {
		System.out.println("challnege/intro");

		Map<String, Object> cMap = challengeService.intro(challengeNo);
		
		model.addAttribute("cMap" , cMap);
		
		return "challenge/intro";
	}

	//챌린지 참여하기
	@RequestMapping(value = "/challenge/joinchallenge", method = { RequestMethod.GET, RequestMethod.POST })
	public String joinchallenge(@ModelAttribute ChallengeVo challengeVo) {
		System.out.println("challnege/joinchallenge");
		
		challengeService.joinChallenge(challengeVo);
		
		return "redirect:/intro";
	}

	
	@RequestMapping(value = "/challenge/{challengeNo}/certify", method = { RequestMethod.GET, RequestMethod.POST })
	public String certify(@PathVariable("challengeNo") int challengeNo) {
		System.out.println("challnege/certify");

		return "challenge/certify";
	}
	
	@RequestMapping(value = "/challenge/{challengeNo}/certified", method = { RequestMethod.GET, RequestMethod.POST })
	public String challenge2(@PathVariable("challengeNo") int challengeNo) {
		System.out.println("challnege/certify");
		
		return "challenge/certify";
	}

	@RequestMapping(value = "/challenge/{challengeNo}/community", method = { RequestMethod.GET, RequestMethod.POST })
	public String challenge3(@PathVariable("challengeNo") int challengeNo) {
		System.out.println("challnege/community");

		return "challenge/community";
	}

	@RequestMapping(value = "/challenge/{challengeNo}/review", method = { RequestMethod.GET, RequestMethod.POST })
	public String challenge4(@PathVariable("challengeNo") int challengeNo) {
		System.out.println("challnege/review");

		return "challenge/review";
	}

	@RequestMapping(value = "/challenge/write", method = { RequestMethod.GET, RequestMethod.POST })
	public String challengeWrite() {
		System.out.println("challenge/challengeWriteForm");

		return "challenge/writechallenge";
	}

	//챌린지 내용 받기
	@ResponseBody
    @RequestMapping(value = "/challenge/upload", method = { RequestMethod.GET, RequestMethod.POST })
    public Map<String, Object> challengeData(@ModelAttribute ChallengeVo challengeVo) throws IOException {

		System.out.println(challengeVo);
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
    	
    	return resultMap;
    }
	
	@ResponseBody
    @RequestMapping(value = "/challenge/subject", method = { RequestMethod.GET, RequestMethod.POST })
    public Map<String, Object> challengeSub(@ModelAttribute ChallengeVo challengeVo) throws IOException {

		System.out.println(challengeVo);
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
    	
    	return resultMap;
    }
	
	
	@RequestMapping(value = "/challenge/{challengeNo}/board", method = { RequestMethod.GET, RequestMethod.POST })
	public String readBoard() {
		System.out.println("challenge/board");

		return "challenge/readboard";
	}

	@RequestMapping(value = "/challenge/{challengeNo}/writeboard", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeBoard() {
		System.out.println("challenge/writeboard");

		return "challenge/writeboard";
	}
}
