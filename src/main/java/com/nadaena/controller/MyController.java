package com.nadaena.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nadaena.service.MyService;
import com.nadaena.vo.ReviewVo;
import com.nadaena.vo.UserVo;

@Controller
public class MyController {
	
	@Autowired
	MyService myService;
	 
	//참가중 + 종료중(전체) 챌린지 리스트
	@RequestMapping(value = "my/challenge", method = { RequestMethod.GET, RequestMethod.POST })
	public String list1(Model model, HttpSession session,
						@RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		
		Map<String, Object> mcMap = myService.getmcList(crtPage, userNo);
		
		model.addAttribute("mcMap", mcMap);
		
		return "my/my-challenge";
	}
	
	//참가중 + 종료중(성공) 챌린지 리스트
	@RequestMapping(value = "my/challenge/success", method = { RequestMethod.GET, RequestMethod.POST })
	public String list2(Model model, HttpSession session,
						@RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		
		Map<String, Object> mcMap = myService.getmcList2(crtPage, userNo);
		
		model.addAttribute("mcMap", mcMap);
		
		return "my/my-challengeyes";
	}
	
	//참가중 + 종료중(실패) 챌린지 리스트
	@RequestMapping(value = "my/challenge/failure", method = { RequestMethod.GET, RequestMethod.POST })
	public String list3(Model model, HttpSession session,
						@RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		Map<String, Object> mcMap = myService.getmcList3(crtPage, userNo);
		
		model.addAttribute("mcMap", mcMap);
		
		return "my/my-challengeno";
	}

	//참가중 이벤트 리스트
	@RequestMapping(value = "my/event", method = { RequestMethod.GET, RequestMethod.POST })
	public String elist1(Model model, HttpSession session,
						@RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		
		Map<String, Object> mcMap = myService.getmeList21(crtPage, userNo);
		
		model.addAttribute("mcMap", mcMap);
		
		return "my/my-event";
	}

	//종료된 이벤트 리스트
	@RequestMapping(value = "my/event/end", method = { RequestMethod.GET, RequestMethod.POST })
	public String elist2(Model model, HttpSession session,
						@RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		Map<String, Object> mcMap = myService.getmeList22(crtPage, userNo);
		
		model.addAttribute("mcMap", mcMap);
		
		return "my/my-eventend";
	}
	
	//북마크 챌린지 리스트
	@RequestMapping(value = "my/bookmark1", method = { RequestMethod.GET, RequestMethod.POST })
	public String blist1(Model model, HttpSession session,
						@RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		Map<String, Object> mbMap = myService.getmbList1(crtPage, userNo);
		
		model.addAttribute("mbMap", mbMap);
		
		return "my/my-bookmark1";
	}	
	
	//북마크 이벤트 리스트
	@RequestMapping(value = "my/bookmark2", method = { RequestMethod.GET, RequestMethod.POST })
	public String blist2(Model model, HttpSession session,
						@RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		Map<String, Object> mbMap = myService.getmbList2(crtPage, userNo);
		
		model.addAttribute("mbMap", mbMap);
		
		return "my/my-bookmark2";
	}	
	
	//마이리뷰 리스트
	@RequestMapping(value = "my/review", method = { RequestMethod.GET, RequestMethod.POST })
	public String rlist(Model model, HttpSession session,
						@RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		
		Map<String, Object> rMap = myService.getmyrList(crtPage, userNo);
		
		model.addAttribute("rMap", rMap);
		System.out.println(rMap);
		return "my/my-review";
	}	
	
	//챌린지 - 리뷰 리스트
	@RequestMapping(value="my/creview/{challengeNo}", method = {RequestMethod.GET, RequestMethod.POST})
	public String review(Model model, @PathVariable("challengeNo") int challengeNo,
					    @RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		System.out.println("review");
		
		Map<String, Object> rMap = myService.getrList(crtPage, challengeNo);
		
		model.addAttribute("rMap", rMap);
		
		return "challenge/review"; 
	} 	
	
	//리뷰쓰기+상태업데이트
	@RequestMapping(value= "my/writeReview", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeReview(@RequestParam("file") MultipartFile file, @ModelAttribute ReviewVo reviewVo, 
							  Model model, HttpSession session) {
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		reviewVo.setUserNo(authUser.getUserNo());
		reviewVo.setNickname(authUser.getNickName());
		
		myService.writeReview(file, reviewVo);
		
		return "redirect:/my/my-challenge";
	}
	
	//리뷰삭제
	@RequestMapping(value = "my/deleteReview", method = { RequestMethod.GET, RequestMethod.POST })
	public String deleteReview(@ModelAttribute ReviewVo reviewVo, HttpSession session) {
		System.out.println("MyCON / delete");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		reviewVo.setUserNo(authUser.getUserNo());
		
		myService.removeReview(reviewVo);

		return "redirect:/my/my-review";
	}
	
	//포인트 리스트(내역)
	@RequestMapping(value = "my/point", method = { RequestMethod.GET, RequestMethod.POST })
	public String plist(Model model, HttpSession session,
						@RequestParam(value="crtPage", required = false, defaultValue = "1") int crtPage) {
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		
		Map<String, Object> pMap = myService.getpList51(crtPage, userNo);
		
		model.addAttribute("pMap", pMap);
		System.out.println(pMap);
		return "my/my-point";
	}	
	
	@RequestMapping(value="my/my-buylist", method = {RequestMethod.GET, RequestMethod.POST})
	public String mybuylist() {
		System.out.println("mybuylist");
		 
		return "my/my-buylist"; 
	} 
	
	@RequestMapping(value="my/main", method = {RequestMethod.GET, RequestMethod.POST})
	public String mymain() {
		System.out.println("mybookmark");
		
		return "my/my-main"; 
	} 
	
}
