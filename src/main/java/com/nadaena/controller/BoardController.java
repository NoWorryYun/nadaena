package com.nadaena.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nadaena.service.BoardService;
import com.nadaena.vo.BoardVo;
import com.nadaena.vo.UserVo;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	//글쓰기 폼
	@RequestMapping(value = "/challenge/{challengeNo}/writeboard", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeBoard(@PathVariable("challengeNo") int challengeNo, Model model) {
		System.out.println("challenge/writeboard");
		
		BoardVo boardVo = new BoardVo();
		
		boardVo.setChallengeNo(challengeNo);
		model.addAttribute("boardVo", boardVo);
		return "challenge/writeboard";
	}
	
	//글쓰기
	@RequestMapping(value= "/challenge/cwrite", method = {RequestMethod.GET, RequestMethod.POST})
	public String write(@ModelAttribute BoardVo boardVo, HttpSession session) {
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		
		if(authUser == null) {
			//로그인 안되어있을 때
		}else if(authUser != null) {
			//로그인 되어있을 때
			boardVo.setUserNo(authUser.getUserNo());
		
			boardService.write(boardVo);
		}		
		
		return "redirect:/challenge/1/writeboard";
	}
	
	
}
