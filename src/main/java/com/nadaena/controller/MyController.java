package com.nadaena.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nadaena.service.MCService;
import com.nadaena.vo.ReviewVo;

@Controller
public class MyController {
	
	@Autowired
	MCService mcService;
	 
	//참가중 + 종료중(전체) 챌린지 리스트
	@RequestMapping(value = "my/my-challenge", method = { RequestMethod.GET, RequestMethod.POST })
	public String list1(Model model, @RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		
		Map<String, Object> mcMap = mcService.getmcList(crtPage);
		
		model.addAttribute("mcMap", mcMap);
		
		return "my/my-challenge";
	}
	
	//참가중 + 종료중(성공) 챌린지 리스트
	@RequestMapping(value = "my/my-challenge/success", method = { RequestMethod.GET, RequestMethod.POST })
	public String list2(Model model, @RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		
		Map<String, Object> mcMap = mcService.getmcList2(crtPage);
		
		model.addAttribute("mcMap", mcMap);
		System.out.println(mcMap);
		return "my/my-challengeyes";
	}
	
	//참가중 + 종료중(실패) 챌린지 리스트
	@RequestMapping(value = "my/my-challenge/failure", method = { RequestMethod.GET, RequestMethod.POST })
	public String list3(Model model, @RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		
		Map<String, Object> mcMap = mcService.getmcList3(crtPage);
		
		model.addAttribute("mcMap", mcMap);
		System.out.println(mcMap);
		return "my/my-challengeno";
	}

	//참가중 이벤트 리스트
	@RequestMapping(value = "my/my-event", method = { RequestMethod.GET, RequestMethod.POST })
	public String elist1(Model model, @RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		
		Map<String, Object> mcMap = mcService.getmeList21(crtPage);
		
		model.addAttribute("mcMap", mcMap);
		System.out.println(mcMap);
		return "my/my-event";
	}

	//종료된 이벤트 리스트
	@RequestMapping(value = "my/my-event/end", method = { RequestMethod.GET, RequestMethod.POST })
	public String elist2(Model model, @RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		
		Map<String, Object> mcMap = mcService.getmeList22(crtPage);
		
		model.addAttribute("mcMap", mcMap);
		System.out.println(mcMap);
		return "my/my-eventend";
	}
	
	//리뷰 리스트
	@RequestMapping(value = "my/my-review", method = { RequestMethod.GET, RequestMethod.POST })
	public String rlist(Model model, @RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		
		Map<String, Object> rMap = mcService.getrList41(crtPage);
		
		model.addAttribute("rMap", rMap);
		System.out.println(rMap);
		return "my/my-review";
	}	
	
	//리뷰쓰기+상태업데이트
	@RequestMapping(value= "my/writeReview", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeReview(@RequestParam("file") MultipartFile file, @ModelAttribute ReviewVo reviewVo, Model model, HttpSession session) {
		
		// Service를 통해서 저장한다
		mcService.writeReview(file, reviewVo);
		System.out.println(reviewVo);
		
		return "redirect:/my/my-challenge";
	}
	
	//리뷰삭제
	@RequestMapping(value = "my/deleteReview", method = { RequestMethod.GET, RequestMethod.POST })
	public String deleteReview(@ModelAttribute ReviewVo reviewVo, HttpSession session) {
		System.out.println("MCCON / delete");

		// 로그인한 사용자의 글만 삭제하도록 세션의 userNo도 입력(쿼리문에서 검사)
		//UserVo authUser = (UserVo) session.getAttribute("authUser");
		//reviewVo.setUserNo(authUser.getNo());
		mcService.removeReview(reviewVo);

		return "redirect:/my/my-review";
	}
	
	//포인트 리스트(내역)
	@RequestMapping(value = "my/my-point", method = { RequestMethod.GET, RequestMethod.POST })
	public String plist(Model model, @RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		
		Map<String, Object> pMap = mcService.getpList51(crtPage);
		
		model.addAttribute("pMap", pMap);
		System.out.println(pMap);
		return "my/my-point";
	}	
	
	@RequestMapping(value="my/my-buylist", method = {RequestMethod.GET, RequestMethod.POST})
	public String mybuylist() {
		System.out.println("mybuylist");
		 
		return "my/my-buylist"; 
	} 
	
	@RequestMapping(value="my/my-bookmark", method = {RequestMethod.GET, RequestMethod.POST})
	public String mybookmark() {
		System.out.println("mybookmark");
		
		return "my/my-bookmark"; 
	} 
}
