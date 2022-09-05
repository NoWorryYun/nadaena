package com.nadaena.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nadaena.service.CommunityService;
import com.nadaena.service.SearchService;
import com.nadaena.vo.BoardVo;
import com.nadaena.vo.ChallengeVo;
import com.nadaena.vo.CommentVo;
import com.nadaena.vo.MainTitleVo;
import com.nadaena.vo.SearchVo;
import com.nadaena.vo.UserVo;

@Controller
public class CommunityController {

	@Autowired
	private CommunityService communityService;
	
	
	@Autowired
	private SearchService searchService;
	
	//챌린지 커뮤니티 게시판 리스트
	@RequestMapping(value = "/challenge/{challengeNo}/community", method = { RequestMethod.GET, RequestMethod.POST })
	public String community(@ModelAttribute SearchVo serchVo, 
								@ModelAttribute ChallengeVo challengeVo,
								@PathVariable("challengeNo") int challengeNo,
								Model model, 
								HttpSession session) {
		
		System.out.println("CommunityController > community");
		
		//세션은 통해 로그인 유무 확인
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		
		int userNo;
		if(authUser != null) {
			userNo = authUser.getUserNo();
		}  else {
			userNo = -1;
		}

		
		//키워드 카테고리 챌린지번호 세팅
		serchVo.setChallengeNo(challengeNo);
		
		challengeVo.setChallengeNo(challengeNo);
		challengeVo.setUserNo(userNo);
		
		
		//조인체크, intro, 글 리스트
		Map<String, Object> cMap = communityService.getCommunity(serchVo, challengeVo);
		model.addAttribute("cMap", cMap);
		
		//best 글 가져오기
		Map<String, List<MainTitleVo>> bestListMap = searchService.getBestClgList();
		model.addAttribute("bestListMap", bestListMap);
		System.out.println(bestListMap);
		
		return "challenge/community";
	}
	

	
	//글쓰기 폼
	@RequestMapping(value = "/challenge/{challengeNo}/community/writeboardForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeboardForm(@PathVariable("challengeNo") int challengeNo, Model model, HttpSession session) {
		System.out.println("CommunityController > writeboardForm");

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int userNo;
		if (userVo != null) {
			userNo = userVo.getUserNo();
		} else {
			userNo = -1;
		}

		Map<String, Object> cMap = communityService.intro(challengeNo);

		model.addAttribute("cMap", cMap);
		
		
		//best 글 가져오기
		Map<String, List<MainTitleVo>> bestListMap = searchService.getBestClgList();
		model.addAttribute("bestListMap", bestListMap);
		System.out.println(bestListMap);

		return "challenge/writeboardForm";
	}
	
	
	//글쓰기
	@RequestMapping(value = "/challenge/{challengeNo}/community/writeboard", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeboard(@ModelAttribute BoardVo boardVo, HttpSession session) {
		System.out.println("CommunityController > writeboard");
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때
			boardVo.setUserNo(authUser.getUserNo());

			communityService.writeBoard(boardVo);
		}
		
		return "redirect:/challenge/"+boardVo.getChallengeNo()+"/community";
	}
	
	
	
	
	//글읽기
	@RequestMapping(value = "/challenge/{challengeNo}/community/readboard/{boardNo}", method = { RequestMethod.GET, RequestMethod.POST })
	public String readBoard(Model model, @PathVariable("challengeNo") int challengeNo,
										 @PathVariable("boardNo") int boardNo) {
		System.out.println("CommunityController > readBoard");
		
		
		Map<String, Object> cMap = communityService.boardRead(challengeNo, boardNo);
		System.out.println(cMap);
		
		
		model.addAttribute("cMap", cMap);
		
		
		//best 글 가져오기
		Map<String, List<MainTitleVo>> bestListMap = searchService.getBestClgList();
		model.addAttribute("bestListMap", bestListMap);
		System.out.println(bestListMap);
		
		return "challenge/readboard";
	}

	
	
	//ajax 댓글등록
	@ResponseBody
	@RequestMapping(value = "/api/community/replyWrite", method = { RequestMethod.GET, RequestMethod.POST })
	public CommentVo replyWrite(@ModelAttribute CommentVo commentVo, HttpSession session) {
		System.out.println("CommunityController > replyWrite");
		CommentVo reVo =  null;
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		if (authUser == null) {
			//로그인 안되어있을 때
		} else if (authUser != null) {
			//로그인 되어있을 때
			commentVo.setUserNo(authUser.getUserNo());

			reVo = communityService.replyWrite(commentVo);
		}
		
		return reVo;
		
	}

	
	
	
}

