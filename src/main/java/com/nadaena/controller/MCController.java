package com.nadaena.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nadaena.service.MCService;
import com.nadaena.vo.MCVo;
import com.nadaena.vo.MRVo;

@Controller
public class MCController {
	
	@Autowired
	MCService mcService;
	 
	//참가중 + 종료중(전체) 챌린지 리스트
	@RequestMapping(value = "my/my-challenge", method = { RequestMethod.GET, RequestMethod.POST })
	public String list1(Model model) {
		System.out.println("MCC > mclist()");
		
		// Service를 통해서 list(주소)을 가져온다
		List<MCVo> mcList = mcService.getmcList();
		
		// ds 데이터보내기 -->request attribute에 넣는다
		model.addAttribute("mcList", mcList);
		
		// Service를 통해서 list(주소)을 가져온다
		List<MCVo> mcList2 = mcService.getmcList2();
		
		// ds 데이터보내기 -->request attribute에 넣는다
		model.addAttribute("mcList2", mcList2);
		
		return "my/my-challenge";
	}
	
	
	//종료중(성공) 챌린지 리스트
	@RequestMapping(value = "my/my-challenge/success", method = { RequestMethod.GET, RequestMethod.POST })
	public String list2(Model model) {
		
		System.out.println("MCC > mclist3()");
		
		// Service를 통해서 list(주소)을 가져온다
		List<MCVo> mcList = mcService.getmcList();
		
		// ds 데이터보내기 -->request attribute에 넣는다
		model.addAttribute("mcList", mcList);
		
		// Service를 통해서 list(주소)을 가져온다
		List<MCVo> mcList3 = mcService.getmcList3();
		
		// ds 데이터보내기 -->request attribute에 넣는다
		model.addAttribute("mcList3", mcList3);
		
		return "my/my-challengeyes";
	}
	
	//종료중(실패) 챌린지 리스트
	@RequestMapping(value = "my/my-challenge/failure", method = { RequestMethod.GET, RequestMethod.POST })
	public String list3(Model model) {
		System.out.println("MCC > mclist4()");
		
		// Service를 통해서 list(주소)을 가져온다
		List<MCVo> mcList = mcService.getmcList();
		
		// ds 데이터보내기 -->request attribute에 넣는다
		model.addAttribute("mcList", mcList);
		
		// Service를 통해서 list(주소)을 가져온다
		List<MCVo> mcList4 = mcService.getmcList4();
		
		// ds 데이터보내기 -->request attribute에 넣는다
		model.addAttribute("mcList4", mcList4);
		
		return "my/my-challengeno";
	}
	
	//리뷰 리스트
	@RequestMapping(value = "my/my-review", method = { RequestMethod.GET, RequestMethod.POST })
	public String myreviewlist(Model model) {
		System.out.println("MCC > mclist()");
		
		// Service를 통해서 list(주소)을 가져온다
		List<MRVo> mrList = mcService.getmrList();
		
		// ds 데이터보내기 -->request attribute에 넣는다
		model.addAttribute("mrList", mrList);
		
		return "my/my-review";
	}
	
	//리뷰쓰기+상태업데이트
	@RequestMapping(value= "my/writeReview", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeReview(@ModelAttribute MRVo mrVo, MCVo mcVo, Model model) {
		System.out.println("bController > write()");
		
		// Service를 통해서 저장한다
		mcService.writeReview(mrVo);
		
		mcService.updateState(mcVo);
		
		return "redirect:/my/my-challenge";
	}
	
	//리뷰삭제
	@RequestMapping(value = "my/deleteReview", method = { RequestMethod.GET, RequestMethod.POST })
	public String deleteReview(@ModelAttribute MRVo mrVo, HttpSession session) {
		System.out.println("MCCON / delete");

		// 로그인한 사용자의 글만 삭제하도록 세션의 userNo도 입력(쿼리문에서 검사)
		//UserVo authUser = (UserVo) session.getAttribute("authUser");
		//mRVo.setUserNo(authUser.getNo());
		mcService.removeReview(mrVo);

		return "redirect:/my/my-review";
	}
}
